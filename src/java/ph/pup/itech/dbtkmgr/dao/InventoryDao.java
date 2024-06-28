package ph.pup.itech.dbtkmgr.dao;

import ph.pup.itech.dbtkmgr.model.InventoryModel;

public class InventoryDao {

    public InventoryModel getItemData(InventoryModel item){
        InventoryModel itemData;
        String itemName = item.getItemName();
        String itemDesc = item.getItemDesc();
        int itemPrice = item.getItemPrice();
        int itemStocks = item.getItemStocks();
        itemData = new InventoryModel( itemName, itemDesc, itemPrice, itemStocks);
        return itemData;
    }

    public void setItemData(InventoryModel item){
        // Implementation for setting item data
    }
}
