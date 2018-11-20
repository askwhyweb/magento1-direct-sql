SELECT p.sku, cpei.`value` AS "status", cs.`name` AS "store_name" FROM catalog_product_entity AS p
INNER JOIN `catalog_product_entity_int` AS cpei ON cpei.`entity_id`=p.`entity_id`
INNER JOIN core_store AS cs ON cs.`store_id` = cpei.`store_id`
WHERE cpei.`attribute_id` = (SELECT ea.attribute_id FROM eav_attribute AS ea WHERE ea.attribute_code="status")
ORDER BY cs.`name`