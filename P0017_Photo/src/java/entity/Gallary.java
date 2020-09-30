/**
 * Gallary.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package entity;

/**
 * Gallary.<br>
 *
 * <pre>
 * Class mô tả đối tượng Gallary
 * Trong class này sẽ tiến hành các xử lí dưới đây
 *
 * . GetId.
 * . SetId.
 * . getName.
 * . setName.
 * . getDescription
 * . setDescription
 * . getCover
 * . setCover
 * . getShortdes
 * . setShortdes
 * </pre>
 *
 * @author duongvhhe130409
 * @version 1.0
 */
public class Gallary implements IModel{

    /**
     * Store id.
     */
    private int id;
    /**
     * Store name.
     */
    private String name;
    /**
     * Store description
     */
    private String description;
    /**
     * Store cover.
     */
    private String cover;
    /**
     * Store shortdes.
     */
    private String shortdes;

    /**
     * Constructor
     */
    public Gallary() {
    }

    /**
     * Constructor full parameter<br>
     *
     * @param id
     * @param name
     * @param description
     * @param cover
     * @param shortdes
     */
    public Gallary(int id, String name, String description, String cover, String shortdes) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.cover = cover;
        this.shortdes = shortdes;
    }

    /**
     * Get Id<br>
     *
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * Set Id<br>
     *
     * @param id the id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * Get Name<br>
     *
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * Set Name<br>
     *
     * @param name the name
     */
    public void setName(String name) {
        this.name = name;
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
     * @param description the description
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * Get Cover<br>
     *
     * @return the cover
     */
    public String getCover() {
        return cover;
    }

    /**
     * Set Cover<br>
     *
     * @param cover the cover
     */
    public void setCover(String cover) {
        this.cover = cover;
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
     * @param shortdes the shortdes
     */
    public void setShortdes(String shortdes) {
        this.shortdes = shortdes;
    }

}
