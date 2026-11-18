

-- 1. CUSTOMERS TABLE
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    city TEXT NOT NULL,
    state TEXT NOT NULL,
    country TEXT NOT NULL,
    signup_date TEXT NOT NULL
);

-- 2. PRODUCTS TABLE
CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL UNIQUE,
    category TEXT NOT NULL,
    unit_cost REAL NOT NULL CHECK(unit_cost >= 0),
    list_price REAL NOT NULL CHECK(list_price >= unit_cost)
);

-- 3. REGIONS TABLE
CREATE TABLE regions (
    region_id INTEGER PRIMARY KEY,
    region_name TEXT NOT NULL UNIQUE,
    country TEXT NOT NULL
);

-- 4. SALES REPRESENTATIVES TABLE
CREATE TABLE sales_reps (
    sales_rep_id INTEGER PRIMARY KEY,
    sales_rep_name TEXT NOT NULL,
    assigned_region TEXT NOT NULL
);

-- 5. ORDERS TABLE
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    order_date TEXT NOT NULL,
    region_id INTEGER NOT NULL,
    sales_rep_id INTEGER NOT NULL,
    order_status TEXT NOT NULL
        CHECK(order_status IN (
            'Delivered',
            'Shipped',
            'Processing',
            'Cancelled'
        )),

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    FOREIGN KEY (region_id)
        REFERENCES regions(region_id),

    FOREIGN KEY (sales_rep_id)
        REFERENCES sales_reps(sales_rep_id)
);

-- UPDATE order_date to TYPE DATE
ALTER TABLE orders
ALTER COLUMN order_date TYPE DATE
USING order_date::DATE;

-- 6. ORDER ITEMS TABLE
CREATE TABLE order_items (
    order_item_id INTEGER PRIMARY KEY,
    order_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL CHECK(quantity > 0),
    unit_price REAL NOT NULL CHECK(unit_price >= 0),
    discount REAL NOT NULL
        CHECK(discount >= 0 AND discount <= 1),

    FOREIGN KEY (order_id)
        REFERENCES orders(order_id),

    FOREIGN KEY (product_id)
        REFERENCES products(product_id),

    UNIQUE(order_id, product_id)
);

-- ==========================================
-- INDEXES FOR QUERY PERFORMANCE
-- ==========================================

CREATE INDEX idx_orders_date
ON orders(order_date);

CREATE INDEX idx_orders_customer
ON orders(customer_id);

CREATE INDEX idx_order_items_product
ON order_items(product_id);
