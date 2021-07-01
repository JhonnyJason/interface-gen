sampleinterface = {}

############################################################
sampleinterface.getLatestOrders = (authCode, assetPairs, subscriber) ->
    requestObject = { authCode, assetPairs, subscriber }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/getLatestOrders"
    return @postData(requestURL, requestObject)

sampleinterface.getLatestTickers = (authCode, assetPairs, subscriber) ->
    requestObject = { authCode, assetPairs, subscriber }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/getLatestTickers"
    return @postData(requestURL, requestObject)

sampleinterface.getLatestBalances = (authCode, assets, subscriber) ->
    requestObject = { authCode, assets, subscriber }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/getLatestBalances"
    return @postData(requestURL, requestObject)

sampleinterface.addRelevantAsset = (authCode, exchangeName, ourName) ->
    requestObject = { authCode, exchangeName, ourName }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/addRelevantAsset"
    return @postData(requestURL, requestObject)

sampleinterface.removeRelevantAsset = (authCode, ourName) ->
    requestObject = { authCode, ourName }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/removeRelevantAsset"
    return @postData(requestURL, requestObject)

sampleinterface.addRelevantAssetPair = (authCode, exchangeName, ourName) ->
    requestObject = { authCode, exchangeName, ourName }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/addRelevantAssetPair"
    return @postData(requestURL, requestObject)

sampleinterface.removeRelevantAssetPair = (authCode, ourName) ->
    requestObject = { authCode, ourName }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/removeRelevantAssetPair"
    return @postData(requestURL, requestObject)

sampleinterface.getRelevantAssets = (authCode) ->
    requestObject = { authCode }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/getRelevantAssets"
    return @postData(requestURL, requestObject)

sampleinterface.getRelevantAssetPairs = (authCode) ->
    requestObject = { authCode }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/getRelevantAssetPairs"
    return @postData(requestURL, requestObject)

sampleinterface.getFailingIdentifiers = (authCode) ->
    requestObject = { authCode }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/getFailingIdentifiers"
    return @postData(requestURL, requestObject)

sampleinterface.getServiceStatus = (authCode) ->
    requestObject = { authCode }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/getServiceStatus"
    return @postData(requestURL, requestObject)

sampleinterface.getNodeId = (authCode) ->
    requestObject = { authCode }
    interfaceServers = allModules.configmodule.interfaceServers
    requestURL = interfaceServers["sampleinterface"]+"/getNodeId"
    return @postData(requestURL, requestObject)

#endregion

    
module.exports = sampleinterface