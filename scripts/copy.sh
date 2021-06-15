# Remove and recreate ABI directory
rm -rf ./abi
mkdir ./abi 

# Copy ABI files to directory
if [ -d ./node_modules/@ohfinance/oh-contracts ]
then 
  cp -r ./node_modules/@ohfinance/oh-contracts/abi/ ./abi
else
  cp -r ../node_modules/@ohfinance/oh-contracts/abi/ ./abi
fi
