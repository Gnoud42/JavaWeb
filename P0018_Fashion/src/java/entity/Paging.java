/**
 * Paging.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package entity;

/**
 * Paging<br>
 * 
 * <pre>
 * Class mô tả đối tượng paging
 * Trong class này sẽ tiến hành các xử lí dưới đây
 * .getFirstPage
 * .getLastPage
 * .getStartPage
 * .getEndPage
 * .getCurrentPage
 * .setCurrentPage
 * .getTotalPage
 * .setTotalPage
 * .getPageSize
 * .setPageSize
 * </pre>
 * 
 * @author duongvhhe130409
 * @version 1.0
 */
public class Paging {
    /**
     * Store currentPage
     */
    private int currentPage;
    /**
     * Store totalPage
     */
    private int totalPage;
    /**
     * Store pageSize
     */
    private int pageSize;

 /**
     * Constructor <br>
     */
    public Paging() {
    }

    /**
     *
     * @param currentPage
     * @param totalPage
     * @param pageSize
     */
    public Paging(int currentPage, int totalPage, int pageSize) {
        this.currentPage = currentPage;
        this.totalPage = totalPage;
        this.pageSize = pageSize;
    }

    /**
     * Get FirstPage<br>
     * 
     * @return 1
     */
    public int getFirstPage() {
        return 1;
    }

    /**
     * Get LastPage<br>
     * 
     * @return res
     */
    public int getLastPage() {
        int res = totalPage / pageSize;
        if (totalPage % pageSize > 0) {
            return res + 1;
        }
        return res;
    }

    /**
     * Get StartPage<br>
     * 
     * @return the currentPage - 3;
     */
    public int getPreviousPage() {
        if (currentPage - 3 < 1) {
            return 1;
        }
        return currentPage - 3;
    }

    /**
     * Get EndPage<br>
     * 
     * @return the currentPage + 3;
     */
    public int getNextPage() {
        if (currentPage + 3 > getLastPage()) {
            return getLastPage();
        }
        return currentPage + 3;
    }

    /**
     * Get CurentPage<br>
     * 
     * @return the currentPage
     */
    public int getCurrentPage() {
        return currentPage;
    }

    /**
     * Set CurrentPage<br>
     * 
     *
     * @param currentPage the currentPage
     */
    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    /**
     * Get TotalPage<br>
     * 
     * @return the totalPage
     */
    public int getTotalPage() {
        return totalPage;
    }

    /**
     * Set TotalPage<br>
     * 
     * @param totalPage the totalPage
     */
    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    /**
     * Get PageSize<br>
     * 
     * @return the pageSize
     */
    public int getPageSize() {
        return pageSize;
    }

    /**
     * Set PageSize<br>
     * 
     * @param pageSize the pageSize
     */
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    
}
