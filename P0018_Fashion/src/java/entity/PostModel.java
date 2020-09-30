/**
 * PostModel.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package entity;

import java.sql.Date;

/**
 * PostModel.<br>
 *
 * <pre>
 * Class mô tả đối tượng PostModel
 * Trong class này sẽ tiến hành các xử lí dưới đây
 *
 * . Get id.
 * . Set id.
 * . Get title.
 * . Set title.
 * . Get avatar.
 * . Set avatar.
 * . Get publicDate.
 * . Set publicDate.
 * . Get content.
 * . Set content.
 * . Get like.
 * . Set like.
 * . Get comment.
 * . Set comment.
 * . Get shortdes.
 * . Set shortdes.
 * </pre>
 *
 * @author duongvhhe130409
 * @version 1.0
 */
public class PostModel implements IModel {

    /**
     * Store id.
     */
    private int id;
    /**
     * Store title.
     */
    private String title;
    /**
     * Store avatar.
     */
    private String avatar;
    /**
     * Store publicDate.
     */
    private Date publicDate;
    /**
     * Store content.
     */
    private String content;
    /**
     * Store like.
     */
    private int like;
    /**
     * Store comment.
     */
    private int comment;
    /**
     * Store shortdes.
     */
    private String shortdes;

    /**
     * Constructor <br>
     */
    public PostModel() {
    }
    
      /**
     * Constructor full parameter<br>
     *
     * @param id
     * @param title
     * @param avatar
     * @param image
     * @param publicDate
     * @param content
     * @param shortdes
     *
     */
    public PostModel(int id, String title, String avatar, Date publicDate, String content, String shortdes) {
        this.id = id;
        this.title = title;
        this.avatar = avatar;
        this.publicDate = publicDate;
        this.content = content;
        this.shortdes = shortdes;
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
     * Get Avatar<br>
     *
     * @return the avatar
     */
    public String getAvatar() {
        return avatar;
    }

    /**
     * Set Avatar<br>
     *
     * @param Avatar the avatar
     */
    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    /**
     * Get PublicDate<br>
     *
     * @return the publicDate
     */
    public Date getPublicDate() {
        return publicDate;
    }

    /**
     * Set PublicDate<br>
     *
     * @param PublicDate the publicDate
     */
    public void setPublicDate(Date publicDate) {
        this.publicDate = publicDate;
    }

    /**
     * Get Content<br>
     *
     * @return the content
     */
    public String getContent() {
        return content;
    }

    /**
     * Set Content<br>
     *
     * @param Content the content
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * Get Like<br>
     *
     * @return the like
     */
    public int getLike() {
        return like;
    }

    /**
     * Set Like<br>
     *
     * @param Like the like
     */
    public void setLike(int like) {
        this.like = like;
    }

    /**
     * Get Comment<br>
     *
     * @return the comment
     */
    public int getComment() {
        return comment;
    }

    /**
     * Set Comment<br>
     *
     * @param Comment the comment
     */
    public void setComment(int comment) {
        this.comment = comment;
    }
     /**
     * Get Shortdes<br>
     *
     * @return the shortdes
     */
    public String getShortdes() {
        return shortdes;
    }
     /**
     * Set Shortdes<br>
     *
     * @param Shortdes the shortdes
     */
    public void setShortdes(String shortdes) {
        this.shortdes = shortdes;
    }
    

}
