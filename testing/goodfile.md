###### tags: `documentation` `sci` `asset-flow-control-system`

# Observer Adapter SCI v0.2

## Regular Operations
- retrieve order information
- retrieve balance information
- retrieve ticker information

### /getLatestOrders
`assetPairs` is an array containing one or more asset pairs for which we want to know the current orders.
For each asset pair we will receive an object containing its `sellStack`, `buyStack`. `cancelledStack` and `filledStack`. These are sorted arrays where `sellStack[0]` is the cheapest sell of the Stack.
Similarily `buyStack[0]` is the most expensive buy of the Stack. Whereas `cancelledStack[0]` is the most recent cancelled order and `filledStack[0]` is the most recent filled order.

#### request
```json
{
    "authCode": "...",
    "assetPairs": ["ether-euro"],
    "subscriber": "https://situation-analyzer.weblenny.at/update"
}
```

#### response
```json
{
    "ether-euro": {
        sellStack: [
            {
                id: "OLAUID",
                type: "sell",
                price: 199.0,
                volume: 0.3
            },
            //...
        ],
        buyStack: [
            {
                id: "SIAUID",
                type: "buy",
                price: 195.0,
                volume: 0.3
            },
            //...
        ],
        cancelledStack: [
            {
                id: "AAAAA",
                time: 1671356172123,
                type: "buy",
                price: 191.0,
                volume: 0.3
            },
            //...
        ],
        filledStack: [
            {
                id: "XXXX",
                time: 1671356172356,
                type: "buy",
                price: 197.0,
                volume: 0.3
            },
            //...        
        ]


    }
}
```

### /getLatestTickers
`assetPairs` is an array containing one or more asset pairs for which we want to know the price information.
For each asset pair we will receive an object containing its latest `askPrice`, `bidPrice` and `closingPrice`.
To know how recent our data are we also have the `timestamp` of when we received the data from the exchange.

#### request
```json
{
    "authCode": "...",
    "assetPairs": ["ether-euro"],
    "subscriber": "https://situation-analyzer.weblenny.at/update"
}
```

#### response
```json
{
    "ether-euro": {
        askPrice: 197,
        bidPrice: 198,
        closingPrice: 197.5,
        timestamp: 132456789
    }
}

```

### /getLatestBalances
`asset` is an array containing one or more assets to retrieve the balance for.
The response then carries an object with an entry for each defined asset. Stating that assets' latest balance.

#### request
```json
{
    "authCode": "...",
    "assets": ["euro", "ether", "usdt"],
    "subscriber": "https://situation-analyzer.weblenny.at/update"
}
```
#### response
```json
{
    "euro": 999.90, 
    "ether": 12.23, 
    "usdt": 662.27
}
```

## Maintenance Operations
- add/remove relevant asset
- add/remove relevant asset-pair
- retrieve currently relevant assets
- retrieve currently relevant asset-pairs
- feedback for wrong asset(asset-pair)-identifiers
- retrieve status information
- retrieve nodeId

### /addRelevantAsset
`exchangeName` is the identifier of the asset on the exchange.
`ourName` is the identifier we use in our network - important that we really consistently use it everywhere.

#### request
```json
{
    "authCode": "...",
    "exchangeName": "USDT",
    "ourName": "usdt"
}
```
#### response
```json
{
    "ok": true
}
```

### /removeRelevantAsset
`ourName` is the identifier we use in our network - important that we really consistently use it everywhere.

#### request
```json
{
    "authCode": "..."
    "ourName": "usdt"
}
```
#### response
```json
{
    "ok": true
}
```

### /addRelevantAssetPair
`exchangeName` is the identifier of the asset on the exchange.
`ourName` is the identifier we use in our network - here it is important to stick to our asset names being separated by a `-`.

#### request
```json
{
    "authCode": "..."
    "exchangeName": "BNTUSDT",
    "ourName": "bancor-usdt"
}
```
#### response
```json
{
    "ok": true
}
```

### /removeRelevantAssetPair
`ourName` is the identifier we use in our network - here it is important to stick to our asset names being separated by a `-`.

#### request
```json
{
    "authCode": "..."
    "ourName": "bancor-usdt"
}
```
#### response
```json
{
    "ok": true
}
```

### /getRelevantAssets

#### request
```json
{
    "authCode": "..."
}
```

#### response
```json
{
    "relevantAssets": [
        "bancor": {
            "exchangeName":"BNT",
            "ourName": "bancor" 
        },
        "usdt": {
            "exchangeName":"USDT",
            "ourName": "usdt"
        }
    ]
}
```

### /getRelevantAssetPairs

#### request
```json
{
    "authCode": "..."
}
```

#### response
```json
{
    "relevantAssetPairs": [
        "bancor-usdt": {
            "exchangeName":"BNTUSDT",
            "ourName": "bancor-usdt"
        }
    ]
}

```

### /getFailingIdentifiers

#### request
```json
{
    "authCode": "..."
}
```

#### response
```json
{
    "failingIdentifiers": [
        "bancor": {
            "exchangeName":"SBNT",
            "ourName": "bancor" 
        },
        "usdt": {
            "exchangeName":"USDK",
            "ourName": "usdt"
        },
        "bancor-usdt": {
            "exchangeName":"BNTUSDK",
            "ourName": "bancor-usdt"
        }

    ]
}
```

### /getServiceStatus

#### request
```json
{
    "authCode": "..."
}
```

#### response
```json
{
    "failingAssetPairs": [
        "bancor-usdt": {
            "exchangeName":"BNTUSDK",
            "ourName": "bancor-usdt"
        }
    ]
}

```

### /getNodeId

#### request
```json
{
    "authCode": "..."
}
```

#### response
```json
{
    "failingAssetPairs": [
        "bancor-usdt": {
            "exchangeName":"BNTUSDK",
            "ourName": "bancor-usdt"
        }
    ]
}

```
