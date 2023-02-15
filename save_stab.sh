# WireMockサーバがlocalhost:8080で動作している場合
WIREMOCK_SAVE_URL="http://localhost:8080/__admin/mappings/save"

# 登録しているスタブが永続化されます
curl -X POST $WIREMOCK_SAVE_URL