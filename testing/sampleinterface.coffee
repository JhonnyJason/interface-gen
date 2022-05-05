import { postData } from "thingy-network-base"

############################################################
export getLatestOrders = (authCode, assetPairs, subscriber) ->
    requestObject = { authCode, assetPairs, subscriber }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/getLatestOrders"
    return @postData(requestURL, requestObject)

export getLatestTickers = (authCode, assetPairs, subscriber) ->
    requestObject = { authCode, assetPairs, subscriber }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/getLatestTickers"
    return @postData(requestURL, requestObject)

export getLatestBalances = (authCode, assets, subscriber) ->
    requestObject = { authCode, assets, subscriber }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/getLatestBalances"
    return @postData(requestURL, requestObject)

export addRelevantAsset = (authCode, exchangeName, ourName) ->
    requestObject = { authCode, exchangeName, ourName }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/addRelevantAsset"
    return @postData(requestURL, requestObject)

export removeRelevantAsset = (authCode, ourName) ->
    requestObject = { authCode, ourName }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/removeRelevantAsset"
    return @postData(requestURL, requestObject)

export addRelevantAssetPair = (authCode, exchangeName, ourName) ->
    requestObject = { authCode, exchangeName, ourName }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/addRelevantAssetPair"
    return @postData(requestURL, requestObject)

export removeRelevantAssetPair = (authCode, ourName) ->
    requestObject = { authCode, ourName }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/removeRelevantAssetPair"
    return @postData(requestURL, requestObject)

export getRelevantAssets = (authCode) ->
    requestObject = { authCode }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/getRelevantAssets"
    return @postData(requestURL, requestObject)

export getRelevantAssetPairs = (authCode) ->
    requestObject = { authCode }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/getRelevantAssetPairs"
    return @postData(requestURL, requestObject)

export getFailingIdentifiers = (authCode) ->
    requestObject = { authCode }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/getFailingIdentifiers"
    return @postData(requestURL, requestObject)

export getServiceStatus = (authCode) ->
    requestObject = { authCode }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/getServiceStatus"
    return @postData(requestURL, requestObject)

export getNodeId = (authCode) ->
    requestObject = { authCode }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/getNodeId"
    return @postData(requestURL, requestObject)
