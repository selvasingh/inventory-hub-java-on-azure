sed -i -e 's/path/eventHubName/g' target/azure-functions/*/Point-of-Transaction/function.json
sed -i -e '22s/connection/connectionStringSetting/' target/azure-functions/*/Point-of-Transaction/function.json

sed -i -e "s/TRANSACTIONS_EVENT_HUB_NAME/$TRANSACTIONS_EVENT_HUB_NAME/g" target/azure-functions/*/Point-of-Transaction/function.json
echo sed -i -e "s@TRANSACTIONS_EVENT_HUB_CONSUMER_GROUP_NAME@$TRANSACTIONS_EVENT_HUB_CONSUMER_GROUP_NAME@g" target/azure-functions/*/Point-of-Transaction/function.json

sed -i -e "s/PRODUCT_ITEMS_DOCUMENTDB_DBNAME/$PRODUCT_ITEMS_DOCUMENTDB_DBNAME/g" target/azure-functions/*/Point-of-Transaction/function.json
sed -i -e "s@PRODUCT_ITEMS_DOCUMENTDB_COLLECTION_NAME@$PRODUCT_ITEMS_DOCUMENTDB_COLLECTION_NAME@g" target/azure-functions/*/Point-of-Transaction/function.json

sed -i -e "s@POT_FUNCTION_APP_STORAGE_ACCOUNT_CONNECTION_STRING@$POT_FUNCTION_APP_STORAGE_ACCOUNT_CONNECTION_STRING@g" target/azure-functions/*/local.settings.json
sed -i -e "s@TRANSACTIONS_EVENT_HUB_CONNECTION_STRING@$TRANSACTIONS_EVENT_HUB_CONNECTION_STRING@g" target/azure-functions/*/local.settings.json
sed -i -e "s@PRODUCT_ITEMS_DOCUMENTDB_CONNECTION_STRING@$PRODUCT_ITEMS_DOCUMENTDB_CONNECTION_STRING@g" target/azure-functions/*/local.settings.json
