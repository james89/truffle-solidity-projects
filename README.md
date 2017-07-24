# Solidity Contract Projects with Truffle

```
yarn
yarn start
```
Migrate and compile contracts
```
truffle migrate
truffle compile
```
Run a local geth or testrpc node (testrpc for now until I customize a geth node with proper config):
```
npm install -g ethereumjs-testrpc
testrpc
```




To do:
- test and write splitter smart contract in Remix, convert it to a utility to be used by any accounts 
- work on UI


## Splitter Contract 
`./contracts/Splitter.sol`

create a smart contract named Splitter whereby:

- there are 3 people: Alice, Bob and Carol
- we can see the balance of the Splitter contract on the web page
- whenever Alice sends ether to the contract, half of it goes to Bob and the other half to Carol
- we can see the balances of Alice, Bob and Carol on the web page
- we can send ether to it from the web page

Stretch goals:

- add a kill switch to the whole contract
- make the contract a utility that can be used by David, Emma and anybody with an address
- cover potentially bad input data


## Shop Contract 