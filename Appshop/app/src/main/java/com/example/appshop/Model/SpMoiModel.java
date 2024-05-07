package com.example.appshop.Model;

import java.util.List;

public class SpMoiModel {
    boolean sucess;
    String message;
    List<SPmoi> result;

    public boolean isSucess() {
        return sucess;
    }

    public void setSucess(boolean sucess) {
        this.sucess = sucess;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public List<SPmoi> getResult() {
        return result;
    }

    public void setResult(List<SPmoi> result) {
        this.result = result;
    }
}
