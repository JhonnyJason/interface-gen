import { postData } from "thingy-network-base"

############################################################
export getLatestOrders = (sciURL, authCode, assetPairs, subscriber) ->
    requestObject = { authCode, assetPairs, subscriber }
    requestURL = sciURL+"/getLatestOrders"
    return postData(requestURL, requestObject)

export getLatestTickers = (sciURL, authCode, assetPairs, subscriber) ->
    requestObject = { authCode, assetPairs, subscriber }
    requestURL = sciURL+"/getLatestTickers"
    return postData(requestURL, requestObject)

export getLatestBalances = (sciURL, authCode, assets, subscriber) ->
    requestObject = { authCode, assets, subscriber }
    requestURL = sciURL+"/getLatestBalances"
    return postData(requestURL, requestObject)

export addRelevantAsset = (sciURL, authCode, exchangeName, ourName) ->
    requestObject = { authCode, exchangeName, ourName }
    requestURL = sciURL+"/addRelevantAsset"
    return postData(requestURL, requestObject)

export removeRelevantAsset = (sciURL, authCode, ourName) ->
    requestObject = { authCode, ourName }
    requestURL = sciURL+"/removeRelevantAsset"
    return postData(requestURL, requestObject)

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
