/**
 * Contact.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package entity;

/**
 * Contact.<br>
 *
 * <pre>
 * Class mô tả đối tượng Contact
 * Trong class này sẽ tiến hành các xử lí dưới đây
 *
 * . getId.
 * . setId.
 * . getAddress.
 * . setAddress.
 * . getCity.
 * . setCity.
 * . getCountry.
 * . setCountry.
 * . getPhone.
 * . setPhone.
 * . getEmail.
 * . setEmail.
 * . getAbout.
 * . setAbout.
 * </pre>
 *
 * @author duongvhhe130409
 * @version 1.0
 */
public class Contact implements IModel{

    /**
     * Store id.
     */
    private int id;
    /**
     * Store address.
     */
    private String address;
    /**
     * Store city.
     */
    private String city;
    /**
     * Store country.
     */
    private String country;
    /**
     * Store phone.
     */
    private String phone;
    /**
     * Store email.
     */
    private String email;
    /**
     * Store about
     */
    private String about;

    /**
     * Constructor
     */
    public Contact() {
    }

    /**
     * Constructor full parameter<br>
     *
     * @param id
     * @param address
     * @param city
     * @param country
     * @param phone
     * @param email
     * @param about
     */
    public Contact(int id, String address, String city, String country, String phone, String email, String about) {
        this.id = id;
        this.address = address;
        this.city = city;
        this.country = country;
        this.phone = phone;
        this.email = email;
        this.about = about;
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
     * Get address<br>
     *
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * Set address<br>
     *
     * @param address the address
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * Get city<br>
     *
     * @return the city
     */
    public String getCity() {
        return city;
    }

    /**
     * Set city<br>
     *
     * @param city the city
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * Get country<br>
     *
     * @return the country
     */
    public String getCountry() {
        return country;
    }

    /**
     * Set country<br>
     *
     * @param country the country
     */
    public void setCountry(String country) {
        this.country = country;
    }

    /**
     * Get phone<br>
     *
     * @return the phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * Set phone<br>
     *
     * @param phone the phone
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * Get email<br>
     *
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * Set email<br>
     *
     * @param email the email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * Get about<br>
     *
     * @return the about
     */
    public String getAbout() {
        return about;
    }

    /**
     * Set about<br>
     *
     * @param about the about
     */
    public void setAbout(String about) {
        this.about = about;
    }

}
