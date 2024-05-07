package com.example.appshop.activity;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.Toast;
import android.widget.ViewFlipper;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;
import com.example.appshop.Model.LoaiSp;
import com.example.appshop.Model.SPmoi;
import com.example.appshop.R;
import com.example.appshop.adapter.LoaiSpAdapter;
import com.example.appshop.adapter.SPmoiAdapter;

import com.example.appshop.retrofit.API_appshop;
import com.example.appshop.retrofit.RetrofitClient;
import com.example.appshop.utils.Utils;
import com.google.android.material.navigation.NavigationView;

import java.util.ArrayList;
import java.util.List;

import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.schedulers.Schedulers;


public class MainActivity extends AppCompatActivity implements NavigationView.OnNavigationItemSelectedListener{
    Toolbar toolbar;
    ViewFlipper viewFlipper;
    RecyclerView recyclerviewManHinhChinh;
    NavigationView navigationView;
    ListView listViewManHinhChinh;
    DrawerLayout drawerLayout;
    LoaiSpAdapter loaiSpAdapter;
    List<LoaiSp> listLoaiSp;
    CompositeDisposable compositeDisposable = new CompositeDisposable();
    API_appshop apiAppshop;
    List<SPmoi> listspMoi;
    SPmoiAdapter spmoiAdapter;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Anhxa();
        ActionBar();
        apiAppshop = RetrofitClient.getInstance(Utils.BASE_URL).create(API_appshop.class);
        if (isConnected(this)){
            ActionViewFlipper();
            getSpMoi();
            getEvenClick();
        }else {
            Toast.makeText(getApplicationContext(), "Không có internet, vui lòng kết nối", Toast.LENGTH_LONG).show();
        }

    }

    private void getEvenClick() {

    }

    private void getSpMoi() {
       compositeDisposable.add(apiAppshop.getSpMoi()
               .subscribeOn(Schedulers.io())
               .observeOn(AndroidSchedulers.mainThread())
                       .subscribe(
                               SpMoiModel -> {
                                    if (SpMoiModel.isSucess()){
                                        listspMoi = SpMoiModel.getResult();
                                        spmoiAdapter = new SPmoiAdapter(getApplicationContext(), listspMoi);
                                        recyclerviewManHinhChinh.setAdapter(spmoiAdapter);
                                    }
                               },
                               throwable -> {
                                   Toast.makeText(getApplicationContext(),"không kết nối được với server"+throwable.getMessage(), Toast.LENGTH_LONG).show();
                               }
                               ));
    }




    private void ActionViewFlipper() {
        List<String> mangQuangCao = new ArrayList<>();
        mangQuangCao.add("https://intphcm.com/data/upload/banner-la-gi.jpg");
        mangQuangCao.add("https://tinhocmiennam.com/wp-content/uploads/2018/06/laptop-banner.jpg");
        mangQuangCao.add("https://cdn.tgdd.vn/Files/2018/11/27/1134121/bannerlaptopthang12_800x450.png");
        for (int i = 0; i < mangQuangCao.size(); i++){
            ImageView imageView = new ImageView(getApplicationContext());
            Glide.with(getApplicationContext()).load(mangQuangCao.get(i)).into(imageView);
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            viewFlipper.addView(imageView);
        }
        viewFlipper.setFlipInterval(3000);
        viewFlipper.setAutoStart(true);
        Animation slide_in = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_in_right);
        Animation slide_out = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_out_right);
        viewFlipper.setInAnimation(slide_in);
        viewFlipper.setOutAnimation(slide_out);
    }

    private void ActionBar() {
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        toolbar.setNavigationIcon(android.R.drawable.ic_menu_sort_by_size);
        toolbar.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                drawerLayout.openDrawer(GravityCompat.START);
            }
        });
    }

    private void Anhxa(){
        toolbar = findViewById(R.id.toolbarManHinhChinh);
        viewFlipper = findViewById(R.id.viewflipperManHinhChinh);
        recyclerviewManHinhChinh = findViewById(R.id.recycleview);
        RecyclerView.LayoutManager layoutManager = new GridLayoutManager(this,2);
        recyclerviewManHinhChinh.setLayoutManager(layoutManager);
        recyclerviewManHinhChinh.setHasFixedSize(true);
        navigationView = findViewById(R.id.navigationview);
        navigationView.setNavigationItemSelectedListener(this);
        drawerLayout = findViewById(R.id.drawerlayout);
        //khởi tạo list
        listLoaiSp = new ArrayList<>();
        listspMoi = new ArrayList<>();

    }
    // hàm kiểm tra thiết nị có kết nối internet hay không
    private boolean isConnected (Context context){
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo wifi = connectivityManager.getNetworkInfo(ConnectivityManager.TYPE_WIFI);
        NetworkInfo mobile = connectivityManager.getNetworkInfo(ConnectivityManager.TYPE_MOBILE);
        if ((wifi != null && wifi.isConnected()) || (mobile != null && mobile.isConnected())){
            return true;
        }else {
            return false;
        }
    }

    @Override
    protected void onDestroy() {
        compositeDisposable.clear();
        super.onDestroy();
    }

    @Override
    //xử lí sự kiện nav
    public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
        int id = menuItem.getItemId();
        if (id == R.id.nav_home){
            Intent home = new Intent(getApplicationContext(), MainActivity.class);
            startActivity(home);
        }
        else if (id == R.id.nav_cart){
            Intent cart = new Intent(getApplicationContext(), cart_activity.class);
            startActivity(cart);
        }
        else if (id == R.id.nav_acc){
            Intent acc = new Intent(getApplicationContext(), acc_activity.class);
            startActivity(acc);
        }
        drawerLayout.closeDrawer(GravityCompat.START);
        return true;
    }

    @Override
    public void onBackPressed() {

        if (drawerLayout.isDrawerOpen(GravityCompat.START)) {
            drawerLayout.closeDrawer(GravityCompat.START);
        }else {
            super.onBackPressed();
        }
    }

}
