package model;

public class resources {
    private int resource_id;
    private String resource_name;
    private String type;
    private float quantity;
    private String supplier_name;
    private String supplier_phone;

    public resources(int resource_id, String resource_name, String type, float quantity, String supplier_name, String supplier_phone) {
        this.resource_id = resource_id;
        this.resource_name = resource_name;
        this.type = type;
        this.quantity = quantity;
        this.supplier_name = supplier_name;
        this.supplier_phone = supplier_phone;
    }

    public int getResource_id() {
        return resource_id;
    }

    public void setResource_id(int resource_id) {
        this.resource_id = resource_id;
    }

    public String getResource_name() {
        return resource_name;
    }

    public void setResource_name(String resource_name) {
        this.resource_name = resource_name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public float getQuantity() {
        return quantity;
    }

    public void setQuantity(float quantity) {
        this.quantity = quantity;
    }

    public String getSupplier_name() {
        return supplier_name;
    }

    public void setSupplier_name(String supplier_name) {
        this.supplier_name = supplier_name;
    }

    public String getSupplier_phone() {
        return supplier_phone;
    }

    public void setSupplier_phone(String supplier_phone) {
        this.supplier_phone = supplier_phone;
    }

    @Override
    public String toString() {
        return "resources{" +
                "resource_id=" + resource_id +
                ", resource_name='" + resource_name + '\'' +
                ", type='" + type + '\'' +
                ", quantity=" + quantity +
                ", supplier_name='" + supplier_name + '\'' +
                ", supplier_phone='" + supplier_phone + '\'' +
                '}';
    }
}
