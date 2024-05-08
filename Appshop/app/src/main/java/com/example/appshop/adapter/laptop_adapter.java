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

import org.w3c.dom.Text;

import java.util.List;

public class laptop_adapter extends RecyclerView.Adapter<laptop_adapter.MyViewHolder> {
    Context context;
    List<SPmoi> array;

    public laptop_adapter(Context context, List<SPmoi> array) {
        this.context = context;
        this.array = array;
    }

    @NonNull
    @Override
    public laptop_adapter.MyViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.activity_laptop, parent,false );
        return new MyViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull laptop_adapter.MyViewHolder holder, int position) {
        SPmoi sp = array.get(position);
        holder.tensp.setText(sp.getTensanpham());
        holder.gia.setText(sp.getGia()+" VNĐ");
        Glide.with(context).load(sp.getHinhanh()).into(holder.imageSP);
    }

    @Override
    public int getItemCount() {
        return array.size();
    }

    public class MyViewHolder extends RecyclerView.ViewHolder{
        TextView tensp, gia;
        ImageView imageSP;
        public MyViewHolder(@NonNull View itemView) {
            super(itemView);
            tensp = itemView.findViewById(R.id.item_lap_tensp);
            gia = itemView.findViewById(R.id.item_lap_gia);
            imageSP = itemView.findViewById(R.id.image_laptop);
        }
    }
}
