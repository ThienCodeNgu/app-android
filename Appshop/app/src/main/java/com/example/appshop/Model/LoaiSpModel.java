package com.example.appshop.Model;

import java.util.List;

public class LoaiSpModel {
    boolean sucess;
    String message;
     List<LoaiSp> result;

    public boolean isSuccess() {
        return sucess;
    }

    public void setSuccess(boolean success) {
        this.sucess = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public List<LoaiSp> getResult() {
        return result;
    }

    public void setResult(List<LoaiSp> result) {
        this.result = result;
    }
}
