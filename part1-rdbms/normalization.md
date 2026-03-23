## Anomaly Analysis (Based on Given Dataset)

### 1. Insert Anomaly
In this dataset, we cannot insert independent data for customers, products, or sales representatives without creating a full order record.

For example:
- A new customer cannot be added unless they place an order.
- A new product cannot be added unless it is purchased in an order.
- A new sales representative cannot be stored without linking them to an order.

This restricts data entry and leads to incomplete database representation.

---

### 2. Update Anomaly
Customer, product, and sales representative details are repeated across multiple rows.

For example:
- If a customer changes their email or city, it must be updated in multiple rows.
- If a product price changes, it must be updated everywhere it appears.
- Sales representative details like email or office address are duplicated across many rows.

If updates are missed in any row, it leads to inconsistent and incorrect data.

---

### 3. Delete Anomaly
Deleting a single order can result in loss of important data.

For example:
- If a customer has only one order and it is deleted, all customer details are lost.
- If a product appears in only one order, deleting that order removes product information.
- Sales representative data may also be lost if associated orders are deleted.

This leads to unintended data loss and poor data integrity.