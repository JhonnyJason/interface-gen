import { postData } from "thingy-network-base"

############################################################
# ## Regular Operations
# - retrieve order information
# - retrieve balance information
# - retrieve ticker information




# `assetPairs` is an array containing one or more asset pairs for which we want to know the current orders.
# For each asset pair we will receive an object containing its `sellStack`, `buyStack`. `cancelledStack` and `filledStack`. These are sorted arrays where `sellStack[0]` is the cheapest sell of the Stack.
# Similarily `buyStack[0]` is the most expensive buy of the Stack. Whereas `cancelledStack[0]` is the most recent cancelled order and `filledStack[0]` is the most recent filled order.
export getLatestOrders = (sciURL, authCode, assetPairs, subscriber) ->
    requestObject = { authCode, assetPairs, subscriber }
    requestURL = sciURL+"/getLatestOrders"
    return postData(requestURL, requestObject)

# `assetPairs` is an array containing one or more asset pairs for which we want to know the price information.
# For each asset pair we will receive an object containing its latest `askPrice`, `bidPrice` and `closingPrice`.
# To know how recent our data are we also have the `timestamp` of when we received the data from the exchange.
export getLatestTickers = (sciURL, authCode, assetPairs, subscriber) ->
    requestObject = { authCode, assetPairs, subscriber }
    requestURL = sciURL+"/getLatestTickers"
    return postData(requestURL, requestObject)

export getLatestBalances = (sciURL, authCode, assets, subscriber) ->
    requestObject = { authCode, assets, subscriber }
    requestURL = sciURL+"/getLatestBalances"
    return postData(requestURL, requestObject)

############################################################
# ## Maintenance Operations
# - add/remove relevant asset
# - add/remove relevant asset-pair
# - retrieve currently relevant assets
# - retrieve currently relevant asset-pairs
# - feedback for wrong asset(asset-pair)-identifiers
# - retrieve status information
# - retrieve nodeId




# `exchangeName` is the identifier of the asset on the exchange.
# `ourName` is the identifier we use in our network - important that we really consistently use it everywhere.
export addRelevantAsset = (sciURL, authCode, exchangeName, ourName) ->
    requestObject = { authCode, exchangeName, ourName }
    requestURL = sciURL+"/addRelevantAsset"
    return postData(requestURL, requestObject)

# `ourName` is the identifier we use in our network - important that we really consistently use it everywhere.
export removeRelevantAsset = (sciURL, authCode, ourName) ->
    requestObject = { authCode, ourName }
    requestURL = sciURL+"/removeRelevantAsset"
    return postData(requestURL, requestObject)

# `exchangeName` is the identifier of the asset on the exchange.
# `ourName` is the identifier we use in our network - here it is important to stick to our asset names being separated by a `-`.
export addRelevantAssetPair = (sciURL, authCode, exchangeName, ourName) ->
    requestObject = { authCode, exchangeName, ourName }
    requestURL = sciURL+"/addRelevantAssetPair"
    return postData(requestURL, requestObject)

export removeRelevantAssetPair = (sciURL, authCode, ourName) ->
    requestObject = { authCode, ourName }
    requestURL = sciURL+"/removeRelevantAssetPair"
    return postData(requestURL, requestObject)

export getRelevantAssets = (sciURL, authCode) ->
    requestObject = { authCode }
    requestURL = sciURL+"/getRelevantAssets"
    return postData(requestURL, requestObject)

export getRelevantAssetPairs = (sciURL, authCode) ->
    requestObject = { authCode }
    requestURL = sciURL+"/getRelevantAssetPairs"
    return postData(requestURL, requestObject)

export getFailingIdentifiers = (sciURL, authCode) ->
    requestObject = { authCode }
    requestURL = sciURL+"/getFailingIdentifiers"
    return postData(requestURL, requestObject)

export getServiceStatus = (sciURL, authCode) ->
    requestObject = { authCode }
    requestURL = sciURL+"/getServiceStatus"
    return postData(requestURL, requestObject)

export getNodeId = (sciURL, authCode) ->
    requestObject = { authCode }
    requestURL = sciURL+"/getNodeId"
    return postData(requestURL, requestObject)
