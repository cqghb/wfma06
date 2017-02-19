package com.cjsf.wfma.bean;

/**
 * @author Administrator
 * @category 用户图片
 */
public class Photo {

	private int photoid;//图片编号
	private String photourl;//图片地址
	private String phototype;//图片类型{头像|非头像}
	private int id;//用户编号
	public Photo() {
		
	}
	public Photo(int photoid, String photourl, String phototype, int id) {
		this.photoid = photoid;
		this.photourl = photourl;
		this.phototype = phototype;
		this.id = id;
	}
	public int getPhotoid() {
		return photoid;
	}
	public void setPhotoid(int photoid) {
		this.photoid = photoid;
	}
	public String getPhotourl() {
		return photourl;
	}
	public void setPhotourl(String photourl) {
		this.photourl = photourl;
	}
	public String getPhototype() {
		return phototype;
	}
	public void setPhototype(String phototype) {
		this.phototype = phototype;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "Photo [photoid=" + photoid + ", photourl=" + photourl + ", phototype=" + phototype + ", id=" + id + "]";
	}
}
