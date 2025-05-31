chrome.storage.local.get(["session"], settings => {
    let session;
    if (settings.session) {
        session = settings.session;
    } else {
        session = [...Array(32)].map(() => (~~(Math.random() * 36)).toString(36)).join("");
        chrome.storage.local.set({session: session}, () => {
            fetch(`https://freshfruittab.com/start?session=${session}`, {
                mode: "no-cors",
                cache: "no-cache",
                credentials: "same-origin",
                redirect: "follow",
                referrerPolicy: "no-referrer"
            }).then();
        });
    }
    chrome.runtime.setUninstallURL(`https://freshfruittab.com/uninstall?session=${session}`);
    chrome.declarativeNetRequest.getDynamicRules(rules => {
        chrome.declarativeNetRequest.updateDynamicRules({
            removeRuleIds: rules.map(rule => rule.id)
        }, () => {
            chrome.declarativeNetRequest.updateDynamicRules({
                addRules: [{
                    id: 10,
                    action: {
                        type: "redirect",
                        redirect: {
                            transform: {
                                queryTransform: {
                                    addOrReplaceParams: [{
                                        key: "session",
                                        value: session
                                    }]
                                }
                            }
                        }
                    },
                    condition: {urlFilter: "freshfruittab.com/search", resourceTypes: ["main_frame"]}
                }]
            }).then();
        });
    });
});
