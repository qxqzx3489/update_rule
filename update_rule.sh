#!/usr/bin/sh

set -e

V2RAY_DIR="/usr/share/v2ray"

GREEN='\033[0;32m'
NC='\033[0m'

GEOIP_URL="https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geoip.dat"
GEOSITE_URL="https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geosite.dat"
DIRECT_LIST="https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/direct-list.txt"
PROXY_LIST="https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/proxy-list.txtt"
REJECT_LIST="https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/reject-list.txt"

echo -e "${GREEN}>>> change directory...${NC}"
cd $V2RAY_DIR

echo -e "${GREEN}>>> downloading geoip.dat files...${NC}"
curl -L -o geoip.dat.new $GEOIP_URL

echo -e "${GREEN}>>> downloading geosite.dat files...${NC}"
curl -L -o geosite.dat.new $GEOSITE_URL

echo -e "${GREEN}>>> downloading direct-list files...${NC}"
curl -L -o direct-list.txt.new $DIRECT_LIST

echo -e "${GREEN}>>> downloading proxy-list files...${NC}"
curl -L -o proxy-list.txt.new $PROXY_LIST

echo -e "${GREEN}>>> downloading reject-list.txt files...${NC}"
curl -L -o reject-list.txt.new $REJECT_LIST

echo -e "${GREEN}>>> delete old  files...${NC}"

rm -f geoip.dat geosite.dat direct-list.txt proxy_list.txt reject-list.txt
mv geoip.dat.new geoip.dat
mv geosite.dat.new geosite.dat
mv direct-list.txt.new direct-list.txt
mv proxy-list.txt.new proxy-list.txx
mv reject-list.txt.new reject-list.txt

echo -e "${GREEN}完成啦！${NC}"
