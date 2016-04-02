var JsExecutorWrapper = {
	exejs :##exejs##,
	getInstance : function() {
		this.executorJs = function() {
			var result = false;
			try {
				result = JsExecutorWrapper.exejs();
			} catch (err) {
				alert("js-ext-command-error|" + err);
			} finally {
				alert("##taskUUID##|js-ext-command-finish|" + result);
			}
		};
		return this;
	}
};
JsExecutorWrapper.getInstance().executorJs();