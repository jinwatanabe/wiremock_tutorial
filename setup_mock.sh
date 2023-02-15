# WireMockサーバがlocalhost:8080で動作している場合
WIREMOCK_URL="http://localhost:8080/__admin/mappings"

# スタブJSONのフォルダをスキャンして、全JSONファイルに対して登録APIを実行する
for jsonfile in mocks/*.json ; 
do
    payload=$(jq 'walk(if type == "object" then with_entries(select(.key[0:1] != "#")) else . end)' $jsonfile)
    curl -X POST -d"$payload" $WIREMOCK_URL
done;