/**
 * News.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package entity;

import java.text.SimpleDateFormat;
import java.util.Date;
 
/**
 * News.<br>
 *
 * <pre >
 * Class mô tả đối tượng news
 * Trong class này sẽ tiến hành các xử lí dưới đây
 *
 * . Get id.
 * . Set id.
 * . Get title. 
 * . Set title. 
 * . Get description. 
 * . Set description.
 * . Get image. 
 * . Set image. 
 * . Get author. 
 * . Set author. 
 * . Get timePost. 
 * . Set timePost. 
 * . Get shortDes. 
 * . Set shortDes. 
 * . Get DateConvert
 * </pre>
 *
 * @author duongvhhe130409
 * @version 1.0
 *
 */
public class News {

    /**
     * Store id.
     */
    private int id;
    /**
     * Store title. */
    private String title;
    /**
     * Store description. */
    private String description;
    /**
     * Store image.*/
    private String image;
    /**
     * Store author.*/
    private String author;
    /**
     * Store timePost.*/
    private Date timePost;
    /**
     * Store shortDes.*/
    private String shortDes;

    /**
     * Constructor <br>
     */
    public News() {
    }

    /**
     *  Constructor full parameter<br>
     *
     * @param id 
     * @param title
     * @param description 
     * @param image 
     * @param timePost 
     * @param author 
     * @param shortDes 
     *
     */
    public News(int id, String title, String description, String image, String author, Date timePost, String shortDes) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.image = image;
        this.author = author;
        this.timePost = timePost;
        this.shortDes = shortDes;
    }

    /**
     * Get DateConvert<br>
     *
     * @return date
     */
    public String getDateConvert() {
        SimpleDateFormat dateFormat1 = new SimpleDateFormat("MMM dd yyyy - hh:mm:");
        SimpleDateFormat dateFormat2 = new SimpleDateFormat("a");
        String date = dateFormat1.format(this.timePost) + dateFormat2.format(this.timePost).toLowerCase();
        return date;
    }

    /**
     * Get id<br>
     *
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * Set id<br>
     *
     * @param id the id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * Get Title<br>
     *
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * Set Title<br>
     *
     * @param Title the title
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * Get Description<br>
     *
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * Set Description<br>
     *
     * @param Description the description
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * Get Image<br>
     *
     * @return the image
     */
    public String getImage() {
        return image;
    }

    /**
     * Set Image<br>
     *
     * @param Image the image
     */
    public void setImage(String image) {
        this.image = image;
    }

    /**
     * Get Author<br>
     *
     * @return the author
     */
    public String getAuthor() {
        return author;
    }

    /**
     * Set Author<br>
     *
     * @param Author the author
     */
    public void setAuthor(String author) {
        this.author = author;
    }

    /**
     * Get TimePost<br>
     *
     * @return the timePost
     */
    public Date getTimePost() {
        return timePost;
    }

    /**
     * Set TimePost<br>
     *
     * @param TimePost the timePost
     */
    public void setTimePost(Date timePost) {
        this.timePost = timePost;
    }

    /**
     * Get ShortDes<br>
     *
     * @return the shortDes
     */
    public String getShortDes() {
        return shortDes;
    }

    /**
     * Set ShortDes<br>
     *
     * @param ShortDes the shortDes
     */
    public void setShortDes(String shortDes) {
        this.shortDes = shortDes;
    }

}
