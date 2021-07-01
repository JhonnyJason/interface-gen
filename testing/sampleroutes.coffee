############################################################
sciroutes.getLatestOrders = (req, res) ->
    try
        response = await h.getLatestOrders(req.body.authCode, req.body.assetPairs, req.body.subscriber)
        res.send(response)
    catch err then res.send({error: err.stack})
    return

############################################################
sciroutes.getLatestTickers = (req, res) ->
    try
        response = await h.getLatestTickers(req.body.authCode, req.body.assetPairs, req.body.subscriber)
        res.send(response)
    catch err then res.send({error: err.stack})
    return

############################################################
sciroutes.getLatestBalances = (req, res) ->
    try
        response = await h.getLatestBalances(req.body.authCode, req.body.assets, req.body.subscriber)
        res.send(response)
    catch err then res.send({error: err.stack})
    return

############################################################
sciroutes.addRelevantAsset = (req, res) ->
    try
        response = await h.addRelevantAsset(req.body.authCode, req.body.exchangeName, req.body.ourName)
        res.send(response)
    catch err then res.send({error: err.stack})
    return

############################################################
sciroutes.removeRelevantAsset = (req, res) ->
    try
        response = await h.removeRelevantAsset(req.body.authCode, req.body.ourName)
        res.send(response)
    catch err then res.send({error: err.stack})
    return

############################################################
sciroutes.addRelevantAssetPair = (req, res) ->
    try
        response = await h.addRelevantAssetPair(req.body.authCode, req.body.exchangeName, req.body.ourName)
        res.send(response)
    catch err then res.send({error: err.stack})
    return

############################################################
sciroutes.removeRelevantAssetPair = (req, res) ->
    try
        response = await h.removeRelevantAssetPair(req.body.authCode, req.body.ourName)
        res.send(response)
    catch err then res.send({error: err.stack})
    return

############################################################
sciroutes.getRelevantAssets = (req, res) ->
    try
        response = await h.getRelevantAssets(req.body.authCode)
        res.send(response)
    catch err then res.send({error: err.stack})
    return

############################################################
sciroutes.getRelevantAssetPairs = (req, res) ->
    try
        response = await h.getRelevantAssetPairs(req.body.authCode)
        res.send(response)
    catch err then res.send({error: err.stack})
    return

############################################################
sciroutes.getFailingIdentifiers = (req, res) ->
    try
        response = await h.getFailingIdentifiers(req.body.authCode)
        res.send(response)
    catch err then res.send({error: err.stack})
    return

############################################################
sciroutes.getServiceStatus = (req, res) ->
    try
        response = await h.getServiceStatus(req.body.authCode)
        res.send(response)
    catch err then res.send({error: err.stack})
    return

############################################################
sciroutes.getNodeId = (req, res) ->
    try
        response = await h.getNodeId(req.body.authCode)
        res.send(response)
    catch err then res.send({error: err.stack})
    return

