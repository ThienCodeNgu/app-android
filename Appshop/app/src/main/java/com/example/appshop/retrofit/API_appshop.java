package com.example.appshop.retrofit;



import com.example.appshop.Model.LoaiSpModel;
import com.example.appshop.Model.SpMoiModel;

import io.reactivex.rxjava3.core.Observable;
import retrofit2.http.GET;

public interface API_appshop {
    @GET("getcategory.php")
    Observable<LoaiSpModel> GetProduct();

    @GET("sanphammoi.php")
    Observable<SpMoiModel> getSpMoi();
}
