echo "Copying datasets"
cp -r ../foodmart-dataset/target/. ./dataset/foodmart
cp -r ../foodmart-dataset/target/foodmart-data-json/. ./mongo/foodmart
cp -r ../zips/src/main/resources/dataset/. ./mongo/zips
cp -r ../twissandra/src/main/resources/dataset/. ./dataset/twissandra


echo "Copying druid datasets"
rm -rf ./druid/druid
cp -r ../foodmart-dataset/target/druid/. ./druid/druid
  
cp -r ../geode-standalone-cluster/target/. ./dataset/geode


docker-compose up --build --force-recreate



