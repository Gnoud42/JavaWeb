/**
 * Photo.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package entity;

/**
 * Photo.<br>
 *
 * <pre>
 * Class mô tả đối tượng Photo
 * Trong class này sẽ tiến hành các xử lí dưới đây
 *
 * . GetId.
 * . SetId.
 * . getGallary_id.
 * . setGallary_id.
 * . getPath
 * . setPath
 * </pre>
 *
 * @author duongvhhe130409
 * @version 1.0
 */
public class Photo {

    /**
     * Store id.
     */
    private int id;
    /**
     * Store gallary_id
     */
    private int gallary_id;
    /**
     * Store path
     */
    private String path;

    /**
     * Constructor <br>
     */
    public Photo() {
    }

    /**
     * Constructor full parameter<br>
     *
     * @param id
     * @param gallary_id
     * @param path
     */
    public Photo(int id, int gallary_id, String path) {
        this.id = id;
        this.gallary_id = gallary_id;
        this.path = path;
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
     * Get gallary_id<br>
     *
     * @return the gallary_id
     */
    public int getGallary_id() {
        return gallary_id;
    }
        /**
     * Set gallary_id<br>
     *
     * @param Gallary_id the gallary_id
     */
    public void setGallary_id(int gallary_id) {
        this.gallary_id = gallary_id;
    }
      /**
     * Get path<br>
     *
     * @return the path
     */
    public String getPath() {
        return path;
    }
          /**
     * Set path<br>
     *
     * @param Path the path
     */
    public void setPath(String path) {
        this.path = path;
    }

}
