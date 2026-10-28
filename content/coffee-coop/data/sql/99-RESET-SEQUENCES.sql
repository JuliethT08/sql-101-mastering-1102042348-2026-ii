-- Moves every SERIAL sequence after the last inserted id
SELECT setval(pg_get_serial_sequence('farm.coffee_varieties', 'variety_id'), (SELECT COALESCE(MAX(variety_id), 1) FROM farm.coffee_varieties));
SELECT setval(pg_get_serial_sequence('farm.certifications', 'certification_id'), (SELECT COALESCE(MAX(certification_id), 1) FROM farm.certifications));
SELECT setval(pg_get_serial_sequence('buy.collection_points', 'collection_point_id'), (SELECT COALESCE(MAX(collection_point_id), 1) FROM buy.collection_points));
SELECT setval(pg_get_serial_sequence('buy.daily_prices', 'daily_price_id'), (SELECT COALESCE(MAX(daily_price_id), 1) FROM buy.daily_prices));
SELECT setval(pg_get_serial_sequence('farm.farmers', 'farmer_id'), (SELECT COALESCE(MAX(farmer_id), 1) FROM farm.farmers));
SELECT setval(pg_get_serial_sequence('farm.farms', 'farm_id'), (SELECT COALESCE(MAX(farm_id), 1) FROM farm.farms));
SELECT setval(pg_get_serial_sequence('farm.plots', 'plot_id'), (SELECT COALESCE(MAX(plot_id), 1) FROM farm.plots));
SELECT setval(pg_get_serial_sequence('farm.plot_varieties', 'plot_variety_id'), (SELECT COALESCE(MAX(plot_variety_id), 1) FROM farm.plot_varieties));
SELECT setval(pg_get_serial_sequence('farm.farm_certifications', 'farm_certification_id'), (SELECT COALESCE(MAX(farm_certification_id), 1) FROM farm.farm_certifications));
