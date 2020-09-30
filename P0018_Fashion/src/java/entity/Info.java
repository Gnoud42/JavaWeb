/**
 * Info.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package entity;

/**
 * Class Message <br>
 * <pre>
 * Class này mô tả đối tượng Message.
 * 
 * getId
 * setId
 * getName
 * setName
 * getMessage
 * setMessage
 * </pre>
 * 
 * @author duongvhhe130409
 * @version 1.0
 */
public class Info {

    /**
     * Store id.
     */
    private int id;
    /**
     * Store name.
     */
    private String name;
    /**
     * Store email.
     */
    private String email;
    /**
     * Store message.
     */
    private String message;

    /**
     * Constructor.
     */
    public Info() {
    }

    /**
     * Constructor full parameter<br>
     * @param name
     * @param email
     * @param message 
     */
    public Info(String name, String email, String message) {
        this.name = name;
        this.email = email;
        this.message = message;
    }
     /**
     * get Id <br>
     *
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * set Id <br>
     *
     * @param id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * get Name <br>
     *
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * ser Name <br>
     *
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * get Email <br>
     *
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * set Email <br>
     *
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * get Message <br>
     *
     * @return the message
     */
    public String getMessage() {
        return message;
    }

    /**
     * set Message <br>
     *
     * @param message
     */
    public void setMessage(String message) {
        this.message = message;
    }
}
