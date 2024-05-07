package com.example.appshop.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;
import com.example.appshop.Model.SPmoi;
import com.example.appshop.R;

import java.util.List;

public class SPmoiAdapter extends RecyclerView.Adapter<SPmoiAdapter.MyViewHolder> {
    Context context;
    List<SPmoi> listSPmoi;

    public SPmoiAdapter(Context context, List<SPmoi> listSPmoi) {
        this.context = context;
        this.listSPmoi = listSPmoi;
    }

    @NonNull
    @Override
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View item = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_sanphammoi, parent,false);
        return new MyViewHolder(item);
    }

    @Override
    public void onBindViewHolder(@NonNull MyViewHolder holder, int i) {
        SPmoi sp_moi = listSPmoi.get(i);
        holder.txtTen.setText(sp_moi.getTensanpham());
        holder.txtGia.setText(sp_moi.getGia()+" VNĐ");
        Glide.with(context).load(sp_moi.getHinhanh()).into(holder.hinhanh);

    }

    @Override
    public int getItemCount() {
        return listSPmoi.size();
    }

    public class MyViewHolder extends RecyclerView.ViewHolder{
        TextView txtGia, txtTen;
        ImageView hinhanh;
        public MyViewHolder(@NonNull View itemView) {
            super(itemView);
            txtGia = itemView.findViewById(R.id.item_spm_gia);
            txtTen = itemView.findViewById(R.id.item_spm_tensp);
            hinhanh = itemView.findViewById(R.id.item_spm_image);
        }
    }
}
