rm -rf ./types
npx typechain --target ./node_modules/@ohfinance/web3-v1/dist/index.js --out-dir ./types './node_modules/@ohfinance/oh-contracts/abi/*.json'