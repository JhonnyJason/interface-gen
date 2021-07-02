############################################################
scihandlers.getLatestOrders = (authCode, assetPairs, subscriber) ->
    result = {}
    ###
    
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

    ###
    return result


############################################################
scihandlers.getLatestTickers = (authCode, assetPairs, subscriber) ->
    result = {}
    ###
    
{
    "ether-euro": {
        askPrice: 197,
        bidPrice: 198,
        closingPrice: 197.5,
        timestamp: 132456789
    }
}


    ###
    return result


############################################################
scihandlers.getLatestBalances = (authCode, assets, subscriber) ->
    result = {}
    ###
    
{
    "euro": 999.90, 
    "ether": 12.23, 
    "usdt": 662.27
}

    ###
    return result


############################################################
scihandlers.addRelevantAsset = (authCode, exchangeName, ourName) ->
    result = {}
    ###
    
{
    "ok": true
}

    ###
    return result


############################################################
scihandlers.removeRelevantAsset = (authCode, ourName) ->
    result = {}
    ###
    
{
    "ok": true
}

    ###
    return result


############################################################
scihandlers.addRelevantAssetPair = (authCode, exchangeName, ourName) ->
    result = {}
    ###
    
{
    "ok": true
}

    ###
    return result


############################################################
scihandlers.removeRelevantAssetPair = (authCode, ourName) ->
    result = {}
    ###
    
{
    "ok": true
}

    ###
    return result


############################################################
scihandlers.getRelevantAssets = (authCode) ->
    result = {}
    ###
    
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

    ###
    return result


############################################################
scihandlers.getRelevantAssetPairs = (authCode) ->
    result = {}
    ###
    
{
    "relevantAssetPairs": [
        "bancor-usdt": {
            "exchangeName":"BNTUSDT",
            "ourName": "bancor-usdt"
        }
    ]
}


    ###
    return result


############################################################
scihandlers.getFailingIdentifiers = (authCode) ->
    result = {}
    ###
    
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

    ###
    return result


############################################################
scihandlers.getServiceStatus = (authCode) ->
    result = {}
    ###
    
{
    "failingAssetPairs": [
        "bancor-usdt": {
            "exchangeName":"BNTUSDK",
            "ourName": "bancor-usdt"
        }
    ]
}


    ###
    return result


############################################################
scihandlers.getNodeId = (authCode) ->
    result = {}
    ###
    
{
    "failingAssetPairs": [
        "bancor-usdt": {
            "exchangeName":"BNTUSDK",
            "ourName": "bancor-usdt"
        }
    ]
}


    ###
    return result


