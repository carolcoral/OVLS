package cn.xdl.ovls.common.entity;

import java.io.Serializable;

public class OvlsResult implements Serializable{
	
	private int status;
	private String msg;
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	
}
