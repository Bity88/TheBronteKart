

--creating tables

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `prodName` varchar(155) NOT NULL,
  `prodImg` varchar(255) NOT NULL,
  `prodDetail` varchar(300) NOT NULL,
  `prodPrice` double NOT NULL,
  `prodCategory` varchar(100) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `trader_id` int(11) NOT NULL,
  `stock` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `shops` (
  `shop_id` int(11) NOT NULL,
  `shopName` varchar(255) NOT NULL,
  `trader_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `traders` (
  `trader_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- primary keys
--


ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `user_id` (`user_id`);


ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);


ALTER TABLE `shops`
  ADD PRIMARY KEY (`shop_id`);


ALTER TABLE `traders`
  ADD PRIMARY KEY (`trader_id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `shops`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `traders`
  MODIFY `trader_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--setting foreign keys

ALTER TABLE `admin`
  ADD CONSTRAINT `fk_useradmin` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);


ALTER TABLE `customers`
  ADD CONSTRAINT `fk_usercustomer` FOREIGN KEY (`customer_id`) REFERENCES `users` (`user_id`);

