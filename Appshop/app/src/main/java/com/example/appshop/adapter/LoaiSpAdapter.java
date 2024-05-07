package com.example.appshop.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.example.appshop.Model.LoaiSp;
import com.example.appshop.R;

import java.util.List;

public class LoaiSpAdapter extends BaseAdapter {
    List<LoaiSp> listLoaiSP;
    Context context;

    public LoaiSpAdapter(List<LoaiSp> listLoaiSP, Context context) {
        this.listLoaiSP = listLoaiSP;
        this.context = context;
    }

    @Override
    public int getCount() {
        return listLoaiSP.size();
    }

    @Override
    public Object getItem(int position) {
        return null;
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }
    public class ViewHolder {
        TextView textTenSp;
        ImageView image_sanpham;
    }
    @Override
    public View getView(int i, View convertView, ViewGroup parent) {
        ViewHolder viewHolder = null;
        if (convertView == null) {
            viewHolder = new ViewHolder();
            LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = layoutInflater.inflate(R.layout.item_sanpham, null);
            viewHolder.textTenSp = convertView.findViewById(R.id.item_tensp);
            viewHolder.image_sanpham = convertView.findViewById(R.id.item_image);
            convertView.setTag(viewHolder);
        }else {
            viewHolder = (ViewHolder) convertView.getTag();
        }
        viewHolder.textTenSp.setText(listLoaiSP.get(i).getTendanhmuc());
        Glide.with(context).load(listLoaiSP.get(i).getHinhanh()).into(viewHolder.image_sanpham);
        return convertView;
    }
}
