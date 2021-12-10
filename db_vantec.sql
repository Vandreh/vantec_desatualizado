
CREATE TABLE `detalle_ventas` (
  `id_venta` int(11) NOT NULL,
  `id_estoque` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `cliente_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `producto_venta` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lote` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `descuento_venta` decimal(11,2) NOT NULL,
  `delivery` decimal(11,2) NOT NULL,
  `fecha_entrega` date NOT NULL,
  `precio_compra` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio_venta` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_venta` date NOT NULL,
  `observaciones` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_producto` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `vencimiento` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_producto` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_compra` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `seguimiento` int(2) NOT NULL,
  `user_created_in` timestamp NULL DEFAULT current_timestamp(),
  `user_cpf` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `estoque` (
  `id_estoque` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_producto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `producto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `fecha_compra` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vencimiento` date NOT NULL,
  `tipo_producto` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lote` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `puntos` int(10) NOT NULL,
  `estoque_created_in` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_cpf` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `ingresos_usuario` (
  `id_ingreso` int(11) NOT NULL,
  `texto_json` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingreso_created_in` timestamp NULL DEFAULT current_timestamp(),
  `user_cpf` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `tb_clientes` (
  `id_cliente` int(11) NOT NULL,
  `cliente_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cliente_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cliente_cellphone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cliente_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cliente_birth` date DEFAULT NULL,
  `tipo_piel` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favorito` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cliente_created_in` timestamp NULL DEFAULT current_timestamp(),
  `user_cpf` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DNI` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `tb_clientes1` (
  `id_cliente` int(11) NOT NULL,
  `texto_json` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_created_in` timestamp NULL DEFAULT current_timestamp(),
  `user_cpf` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `tb_compras` (
  `id_compra` int(11) NOT NULL,
  `fecha_compra` date DEFAULT NULL,
  `fecha_recepcion` date DEFAULT NULL,
  `descuento_compra` int(3) DEFAULT NULL,
  `precio_compra` decimal(7,2) DEFAULT NULL,
  `flete` decimal(7,2) DEFAULT NULL,
  `impuesto` decimal(7,2) NOT NULL,
  `id_producto` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_producto` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lote` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `puntos` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `compra_created_in` timestamp NULL DEFAULT current_timestamp(),
  `user_cpf` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `tb_compras1` (
  `id_compra` int(11) NOT NULL,
  `compra_json` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `compra_created_in` timestamp NULL DEFAULT current_timestamp(),
  `user_cpf` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `tb_productos` (
  `id_producto` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_producto` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` decimal(7,2) DEFAULT NULL,
  `codigo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `puntos` int(10) NOT NULL,
  `producto_created_in` timestamp NULL DEFAULT current_timestamp(),
  `user_cpf` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `tb_productos1` (
  `id_producto` int(11) NOT NULL,
  `texto_json` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_created_in` timestamp NULL DEFAULT current_timestamp(),
  `user_cpf` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `tb_profiles` (
  `id_profile` int(1) NOT NULL,
  `profile_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_page` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `tb_users` (
  `id_user` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_birth` date DEFAULT NULL,
  `user_cpf` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_cellphone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created_in` timestamp NULL DEFAULT current_timestamp(),
  `profile_id` int(11) DEFAULT NULL,
  `user_full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `observaciones` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `tb_users1` (
  `id_user` int(11) NOT NULL,
  `texto_json` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_created_in` timestamp NULL DEFAULT current_timestamp(),
  `user_cpf` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `tb_ventas` (
  `id_venta` int(11) NOT NULL,
  `id_estoque` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `cliente_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `producto_venta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lote` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descuento_venta` decimal(7,2) DEFAULT NULL,
  `delivery` decimal(7,2) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `precio_compra` decimal(7,2) DEFAULT NULL,
  `precio_venta` decimal(7,2) DEFAULT NULL,
  `fecha_venta` date DEFAULT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_producto` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vencimiento` date NOT NULL,
  `id_producto` int(5) NOT NULL,
  `fecha_compra` date NOT NULL,
  `seguimiento` int(2) NOT NULL,
  `user_created_in` timestamp NULL DEFAULT current_timestamp(),
  `user_cpf` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `tb_ventas1` (
  `id_venta` int(11) NOT NULL,
  `venta_json` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `venta_created_in` timestamp NULL DEFAULT current_timestamp(),
  `user_cpf` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id_venta`);

ALTER TABLE `estoque`
  ADD PRIMARY KEY (`id_estoque`);

ALTER TABLE `ingresos_usuario`
  ADD PRIMARY KEY (`id_ingreso`);

ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`id_cliente`);

ALTER TABLE `tb_clientes1`
  ADD PRIMARY KEY (`id_cliente`);

ALTER TABLE `tb_compras`
  ADD PRIMARY KEY (`id_compra`);

ALTER TABLE `tb_compras1`
  ADD PRIMARY KEY (`id_compra`);

ALTER TABLE `tb_productos`
  ADD PRIMARY KEY (`id_producto`);

ALTER TABLE `tb_productos1`
  ADD PRIMARY KEY (`id_producto`);

ALTER TABLE `tb_profiles`
  ADD PRIMARY KEY (`id_profile`);

ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD UNIQUE KEY `user_cpf` (`user_cpf`);

ALTER TABLE `tb_users1`
  ADD PRIMARY KEY (`id_user`);

ALTER TABLE `tb_ventas`
  ADD PRIMARY KEY (`id_venta`);

ALTER TABLE `tb_ventas1`
  ADD PRIMARY KEY (`id_venta`);


ALTER TABLE `detalle_ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `estoque`
  MODIFY `id_estoque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2649;

ALTER TABLE `ingresos_usuario`
  MODIFY `id_ingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

ALTER TABLE `tb_clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

ALTER TABLE `tb_clientes1`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

ALTER TABLE `tb_compras`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

ALTER TABLE `tb_compras1`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

ALTER TABLE `tb_productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8941;

ALTER TABLE `tb_productos1`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_profiles`
  MODIFY `id_profile` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `tb_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

ALTER TABLE `tb_users1`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

ALTER TABLE `tb_ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

ALTER TABLE `tb_ventas1`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;
