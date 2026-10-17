cd /root/fr-relay
curl -s -m 30 -X POST https://api.hyperliquid.xyz/info -H Content-Type:application/json -d '{"type":"metaAndAssetCtxs","dex":"xyz"}' -o xyz.json
curl -s -m 30 https://omni-client-api.prod.ap-northeast-1.variational.io/metadata/stats -o vari.json
curl -s -m 30 https://api.arcus.xyz/v1/markets -o arcus.json
date -u +%FT%TZ > ts.txt
git add -A && git -c user.name=relay -c user.email=relay@local commit -qm upd && git push -q -u origin HEAD
