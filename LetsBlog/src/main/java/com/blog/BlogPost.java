package com.blog;

public class BlogPost {
	int id;
	String title;
	String content;
	String time;
	String author;

	public BlogPost(int id, String title, String content, String time, String author) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.time = time;
		this.author = author;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

}
