############################################################
scihandlers.getLatestOrders = (authCode, assetPairs, subscriber) ->
    result = {}
    ###
    
{
    &quot;ether-euro&quot;: {
        sellStack: [
            {
                id: &quot;OLAUID&quot;,
                type: &quot;sell&quot;,
                price: 199.0,
                volume: 0.3
            },
            &#x2F;&#x2F;...
        ],
        buyStack: [
            {
                id: &quot;SIAUID&quot;,
                type: &quot;buy&quot;,
                price: 195.0,
                volume: 0.3
            },
            &#x2F;&#x2F;...
        ],
        cancelledStack: [
            {
                id: &quot;AAAAA&quot;,
                time: 1671356172123,
                type: &quot;buy&quot;,
                price: 191.0,
                volume: 0.3
            },
            &#x2F;&#x2F;...
        ],
        filledStack: [
            {
                id: &quot;XXXX&quot;,
                time: 1671356172356,
                type: &quot;buy&quot;,
                price: 197.0,
                volume: 0.3
            },
            &#x2F;&#x2F;...        
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
    &quot;ether-euro&quot;: {
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
    &quot;euro&quot;: 999.90, 
    &quot;ether&quot;: 12.23, 
    &quot;usdt&quot;: 662.27
}

    ###
    return result


############################################################
scihandlers.addRelevantAsset = (authCode, exchangeName, ourName) ->
    result = {}
    ###
    
{
    &quot;ok&quot;: true
}

    ###
    return result


############################################################
scihandlers.removeRelevantAsset = (authCode, ourName) ->
    result = {}
    ###
    
{
    &quot;ok&quot;: true
}

    ###
    return result


############################################################
scihandlers.addRelevantAssetPair = (authCode, exchangeName, ourName) ->
    result = {}
    ###
    
{
    &quot;ok&quot;: true
}

    ###
    return result


############################################################
scihandlers.removeRelevantAssetPair = (authCode, ourName) ->
    result = {}
    ###
    
{
    &quot;ok&quot;: true
}

    ###
    return result


############################################################
scihandlers.getRelevantAssets = (authCode) ->
    result = {}
    ###
    
{
    &quot;relevantAssets&quot;: [
        &quot;bancor&quot;: {
            &quot;exchangeName&quot;:&quot;BNT&quot;,
            &quot;ourName&quot;: &quot;bancor&quot; 
        },
        &quot;usdt&quot;: {
            &quot;exchangeName&quot;:&quot;USDT&quot;,
            &quot;ourName&quot;: &quot;usdt&quot;
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
    &quot;relevantAssetPairs&quot;: [
        &quot;bancor-usdt&quot;: {
            &quot;exchangeName&quot;:&quot;BNTUSDT&quot;,
            &quot;ourName&quot;: &quot;bancor-usdt&quot;
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
    &quot;failingIdentifiers&quot;: [
        &quot;bancor&quot;: {
            &quot;exchangeName&quot;:&quot;SBNT&quot;,
            &quot;ourName&quot;: &quot;bancor&quot; 
        },
        &quot;usdt&quot;: {
            &quot;exchangeName&quot;:&quot;USDK&quot;,
            &quot;ourName&quot;: &quot;usdt&quot;
        },
        &quot;bancor-usdt&quot;: {
            &quot;exchangeName&quot;:&quot;BNTUSDK&quot;,
            &quot;ourName&quot;: &quot;bancor-usdt&quot;
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
    &quot;failingAssetPairs&quot;: [
        &quot;bancor-usdt&quot;: {
            &quot;exchangeName&quot;:&quot;BNTUSDK&quot;,
            &quot;ourName&quot;: &quot;bancor-usdt&quot;
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
    &quot;failingAssetPairs&quot;: [
        &quot;bancor-usdt&quot;: {
            &quot;exchangeName&quot;:&quot;BNTUSDK&quot;,
            &quot;ourName&quot;: &quot;bancor-usdt&quot;
        }
    ]
}


    ###
    return result


