package com.entity;

public class StoreDTO {
	
	private String sid;
	private String sname;
	private String shour1;
	private String shour2;
	private String post1;
	private String post2;
	private String addr1;
	private String addr2;
	private String scategory;
	private String sphone1;
	private String sphone2;
	private String sphone3;
	private String menu;
	private int sprice;
	private char parking;
	private int rating;
	private int ratingCnt;
	private String imgSrc1;
	private String imgSrc2;
	private String imgSrc3;
	private String imgSrc4;
	private String createAt;
	
	public StoreDTO() {
	}

	public StoreDTO(String sid, String sname, String shour1, String shour2, String post1, String post2, String addr1,
			String addr2, String scategory, String sphone1, String sphone2, String sphone3, String menu, int sprice,
			char parking, int rating, int ratingCnt, String imgSrc1, String imgSrc2, String imgSrc3, String imgSrc4,
			String createAt) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.shour1 = shour1;
		this.shour2 = shour2;
		this.post1 = post1;
		this.post2 = post2;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.scategory = scategory;
		this.sphone1 = sphone1;
		this.sphone2 = sphone2;
		this.sphone3 = sphone3;
		this.menu = menu;
		this.sprice = sprice;
		this.parking = parking;
		this.rating = rating;
		this.ratingCnt = ratingCnt;
		this.imgSrc1 = imgSrc1;
		this.imgSrc2 = imgSrc2;
		this.imgSrc3 = imgSrc3;
		this.imgSrc4 = imgSrc4;
		this.createAt = createAt;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getShour1() {
		return shour1;
	}

	public void setShour1(String shour1) {
		this.shour1 = shour1;
	}

	public String getShour2() {
		return shour2;
	}

	public void setShour2(String shour2) {
		this.shour2 = shour2;
	}

	public String getPost1() {
		return post1;
	}

	public void setPost1(String post1) {
		this.post1 = post1;
	}

	public String getPost2() {
		return post2;
	}

	public void setPost2(String post2) {
		this.post2 = post2;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getScategory() {
		return scategory;
	}

	public void setScategory(String scategory) {
		this.scategory = scategory;
	}

	public String getSphone1() {
		return sphone1;
	}

	public void setSphone1(String sphone1) {
		this.sphone1 = sphone1;
	}

	public String getSphone2() {
		return sphone2;
	}

	public void setSphone2(String sphone2) {
		this.sphone2 = sphone2;
	}

	public String getSphone3() {
		return sphone3;
	}

	public void setSphone3(String sphone3) {
		this.sphone3 = sphone3;
	}

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	public int getSprice() {
		return sprice;
	}

	public void setSprice(int sprice) {
		this.sprice = sprice;
	}

	public char getParking() {
		return parking;
	}

	public void setParking(char parking) {
		this.parking = parking;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public int getRatingCnt() {
		return ratingCnt;
	}

	public void setRatingCnt(int ratingCnt) {
		this.ratingCnt = ratingCnt;
	}

	public String getImgSrc1() {
		return imgSrc1;
	}

	public void setImgSrc1(String imgSrc1) {
		this.imgSrc1 = imgSrc1;
	}

	public String getImgSrc2() {
		return imgSrc2;
	}

	public void setImgSrc2(String imgSrc2) {
		this.imgSrc2 = imgSrc2;
	}

	public String getImgSrc3() {
		return imgSrc3;
	}

	public void setImgSrc3(String imgSrc3) {
		this.imgSrc3 = imgSrc3;
	}

	public String getImgSrc4() {
		return imgSrc4;
	}

	public void setImgSrc4(String imgSrc4) {
		this.imgSrc4 = imgSrc4;
	}

	public String getCreateAt() {
		return createAt;
	}

	public void setCreateAt(String createAt) {
		this.createAt = createAt;
	}

	@Override
	public String toString() {
		return "StoreDTO [sid=" + sid + ", sname=" + sname + ", shour1=" + shour1 + ", shour2=" + shour2 + ", post1="
				+ post1 + ", post2=" + post2 + ", addr1=" + addr1 + ", addr2=" + addr2 + ", scategory=" + scategory
				+ ", sphone1=" + sphone1 + ", sphone2=" + sphone2 + ", sphone3=" + sphone3 + ", menu=" + menu
				+ ", sprice=" + sprice + ", parking=" + parking + ", rating=" + rating + ", ratingCnt=" + ratingCnt
				+ ", imgSrc1=" + imgSrc1 + ", imgSrc2=" + imgSrc2 + ", imgSrc3=" + imgSrc3 + ", imgSrc4=" + imgSrc4
				+ ", createAt=" + createAt + "]";
	}

	
}
