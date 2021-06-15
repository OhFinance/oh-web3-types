# Remove and recreate Typechain directory
rm -rf ./types
mkdir ./types

# Generate web3 typings
if [ -d ./node_modules/@ohfinance/oh-contracts ]
then 
  npx typechain \
  --target ./node_modules/@ohfinance/web3-v1/dist/index.js \
  --out-dir ./types \
  './node_modules/@ohfinance/oh-contracts/abi/*.json'
else
  npx typechain \
  --target ../node_modules/@ohfinance/web3-v1/dist/index.js \
  --out-dir ./types \
  '../node_modules/@ohfinance/oh-contracts/abi/*.json'
fi