package com.kodup.admin.totalboard;

public class AdminTotalboardVo {
   int sno;
   int viewcount;
   int thumbup;
   int thumbdown;
   
   String boardtype;
   String subject;
   String nickname;
   String nal;
   String doc;
   String profile_img;
   String hashtag;
   

public int getThumbup() {
	return thumbup;
}
public void setThumbup(int thumbup) {
	this.thumbup = thumbup;
}
public int getThumbdown() {
	return thumbdown;
}
public void setThumbdown(int thumbdown) {
	this.thumbdown = thumbdown;
}
public String getHashtag() {
	return hashtag;
}
public void setHashtag(String hashtag) {
	this.hashtag = hashtag;
}
public String getProfile_img() {return profile_img;}
public void setProfile_img(String profile_img) {this.profile_img = profile_img;}
public int getSno() {return sno;}
public void setSno(int sno) {this.sno = sno;}
public int getViewcount() {return viewcount;}
public void setViewcount(int viewcount) {this.viewcount = viewcount;}
public String getBoardtype() {return boardtype;}
public void setBoardtype(String boardType) {this.boardtype = boardType;}
public String getSubject() {return subject;}
public void setSubject(String subject) {this.subject = subject;}
public String getNickname() {return nickname;}
public void setNickname(String nickname) {this.nickname = nickname;}
public String getNal() {return nal;}
public void setNal(String nal) {this.nal = nal;}
public String getDoc() {return doc;}
public void setDoc(String doc) {this.doc = doc;}
   
   
}
