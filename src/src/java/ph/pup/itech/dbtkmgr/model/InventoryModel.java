package ph.pup.itech.dbtkmgr.model;

public class InventoryModel {
    private int itemId;
    private String itemName;
    private String itemDesc;
    private String itemSize;
    private int itemPrice;
    private int itemStocks;

    public InventoryModel() {
        // Set as empty.
    }

    public InventoryModel(String itemId, String itemName, String itemSize, int itemPrice, int itemStocks) {
        this.itemName = itemName;
        this.itemName = itemSize;
        this.itemPrice = itemPrice;
        this.itemStocks = itemStocks;
    }

    public InventoryModel(String itemId, String itemName, String itemDesc,  String itemSize, int itemPrice, int itemStocks) {
        this.itemName = itemName;
        this.itemDesc = itemDesc;
        this.itemDesc = itemSize;
        this.itemPrice = itemPrice;
        this.itemStocks = itemStocks;
    }

    // Getters
    public int getItemId() {
        return itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public String getItemDesc() {
        return itemDesc;
    }

    public String getItemSize() {
        return itemSize;
    }

    public int getItemPrice() {
        return itemPrice;
    }

    public int getItemStocks() {
        return itemStocks;
    }

    // Setters
    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public void setItemDesc(String itemDesc) {
        this.itemDesc = itemDesc;
    }

    public void setItemSize(String itemSize) {
        this.itemSize = itemSize;
    }

    public void setItemPrice(int itemPrice) {
        this.itemPrice = itemPrice;
    }

    public void setItemStocks(int itemStocks) {
        this.itemStocks = itemStocks;
    }
}
