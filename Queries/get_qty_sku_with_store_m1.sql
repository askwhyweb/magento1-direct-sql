SELECT p.sku, cw.`name`,css.`qty`, css.`stock_status` FROM catalog_product_entity AS p
INNER JOIN `cataloginventory_stock_status` AS css ON css.`product_id`=p.`entity_id`
INNER JOIN core_website AS cw ON cw.`website_id` = css.`website_id`