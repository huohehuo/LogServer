package WebSide.bean;

import Bean.ConnectResponseBean;
import Bean.DownloadReturnBean;
import Bean.InStorageNumListBean;

import java.util.ArrayList;
import java.util.List;

public class CommonResponse4Web {
	public boolean state;
	public String msg;
	public int size;
	public List<DownloadReturnBean.storage> storages;
	public ArrayList<InStorageNumListBean.inStoreList> inStoreLists;
	public ArrayList<ConnectResponseBean.DataBaseList> dataBaseLists;

	public CommonResponse4Web() {

	}
	public CommonResponse4Web(boolean state, int size, List<DownloadReturnBean.storage> storages) {
		this.state = state;
		this.size = size;
		this.storages = storages;
	}
	public CommonResponse4Web(boolean state, int size, List<DownloadReturnBean.storage> storages, String msg) {
		this.state = state;
		this.size = size;
		this.storages = storages;
		this.msg = msg;
	}
	public CommonResponse4Web(boolean state, int size, ArrayList<InStorageNumListBean.inStoreList> inStoreLists) {
		this.state = state;
		this.size = size;
		this.inStoreLists = inStoreLists;
	}
	public CommonResponse4Web(boolean state, int size, ArrayList<InStorageNumListBean.inStoreList> inStoreLists, String msg) {
		this.state = state;
		this.size = size;
		this.inStoreLists = inStoreLists;
		this.msg = msg;
	}
}