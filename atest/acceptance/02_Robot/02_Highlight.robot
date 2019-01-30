*** Settings ***
Documentation     Highlight Robot Syntax
Suite Setup       Make a Highlighting Notebook
Default Tags      kernel:robot    browser:${BROWSER}    feature:highlighting
Resource          ../../resources/Lab.robot
Resource          ../../resources/Browser.robot
Resource          ../../resources/Notebook.robot
Resource          ../../resources/LabRobot.robot
Resource          ../../resources/CodeMirror.robot
Resource          ../../resources/Elements.robot
Library           SeleniumLibrary
Library           OperatingSystem

*** Test Cases ***
Robot Syntax is Beautiful
    [Documentation]    Does CodeMirror syntax highlighting work as expected?
    [Template]    Robot Syntax Highlighting Should Yield Tokens
    basic${/}00_test_case
    loops${/}old_style
    # BEGIN RFUG
    rfug${/}0121d11dce72f3f16f8d2f274d534f5086ee5373f9ffd8b38f6f52dfa55d7e2a
    rfug${/}02373c48f779c78c85002af6741b00f9e5097c4df40c280c2cb619bff8766ae1
    rfug${/}04923f3ba2cf4a5c0e4f07bf5422da5e064aba1491996f897c0b1f7919cf6404
    rfug${/}0592b828e07e0283a522ac9829ba7ca3f6fdb4daa808894c222fecae0cd27271
    rfug${/}05d4af64db1a38b98851b62f82a9301e843f661f7850981bc1b535ccf4c1a8c4
    rfug${/}05f5d8372d56c856d474cc82abdc00317867ea54ad3adfe9cf6ab18dd30d0c18
    rfug${/}06b24460be2e6ff2ada5c7550b03c14a42bc4ee410f8203b8b24dff53f722ee7
    rfug${/}08ef901bb6046ea0e59b3135401bc5e1928fa3ff6b390bfb059787564e08c139
    rfug${/}092e8d511af68be2a0a286be12b9a8048ab6cbc76c0c17aae6deb2de4a202e14
    rfug${/}0a97471622cafaedc59fd034eb0c484968f7c255f1b444c5f8d6038964f20df4
    rfug${/}0aab0d1fa74549494ee3e3c84ddece2f5d7e6680c2988663e098a18b3e07cd08
    rfug${/}0b24694ed1b1f98493b33555347be15188b01a8b50e95908f62eb1e71cb2975a
    rfug${/}1086595c60f3ffa2007ec24cb12a5d03c3b781e0cac0add7ecf98aa9390d2c69
    rfug${/}10e560062d3cc3a4936b9d0feb6628087863a9da53e281985d7ef58d2467bda4
    rfug${/}12bc8b58d19da54d10464c7107a68802e9c4912343ce983b8eaa2d10b0099833
    rfug${/}153a7e6614945b59ba4e59d9edc514e15f4cc6d92e383e709d2b40e4ddee787b
    rfug${/}1741f94ea882100c7f6b2b0b496b4a637973fae1438d0fce3dcf4792b175cef8
    rfug${/}1e8269dbd5a257712003467240e33b0632e174f69162d8b0fb1d9de784c68e64
    rfug${/}1e8353f856ca260e56f3050614e1dfe55cb5ff456a8680c8dfb2656e31a410f1
    rfug${/}20048739e7b3b3c944c35d0bc955912fc2363c7cc1c2e5fb594410e0d15b65ac
    rfug${/}20cd40ec5b88bbf6580d05322f9ec2c64625c37083c087bfa24d3ae4ccfdc766
    rfug${/}20df04918baac64af57717b43e0fbfd87689b08217ff180d1a09cfa3dd497e61
    rfug${/}20fc6f917a687c807d152c6a14042af0a36e894e08a1116125b962ed54ce5ea5
    rfug${/}212879366507eb8c8c3509b446f156ca2384014a22d05a7d5f988aee5da9c37e
    rfug${/}22497e75fa6c14bfb4ad25da9d15c9182c8e755855891a5b00f6fb029a53e61b
    rfug${/}2c42f0b3e12f62dcadafeadeb0d11c098a5293f528df5335f8260b77109e65c0
    rfug${/}2c6668edd2895cdc20a9b6dc72d211c4d9d0e77c0a68920ce109b6d8918c26a9
    rfug${/}2f32350c830d580b80de7c91b064fe7dfa1b85d9ab2b19ebe334ecedd3269005
    rfug${/}30d47f677d803f0d674302e9f409d930084a538133e5c7da5ca9597577eb476f
    rfug${/}341d95770204f76464bcb48e9d022bfe8bc5fd0775c634c648e21d2e2e1c19b7
    rfug${/}34f6accdeebdb7202794c428a23b952f3be36437dffb02ae39814e88ddfcb7db
    rfug${/}388c8b54ac98242cee4261f62fe4acf333f0ac5c2ca76d41c2fd1f4ed71ec34b
    rfug${/}39cad635de20b26a82df7d01b53e6761f66dd37d13dd45afc52911b4cb0d125b
    rfug${/}3aa3b4570c5ba1f80ca037585fd9b0db072fcee39904a8ea550857e45054455d
    rfug${/}3d958a4ca736e539b8bf1ef949794659715bd81c247a9af0732b1578de94de11
    rfug${/}3d98df5a260675e328661d653b10c7c0133b7911d606d86a1db43b1a35af9510
    rfug${/}3e277a8346d48ea215024a486ec6a28fba58f841477fdd5a705c421a41146499
    rfug${/}3ef696c06c63d42d883007555bd6f95b8cfef399451aeb0c8ef42412f68196fe
    rfug${/}3f284550c09f030f37c5284ed13866c6eba6a125af3fea1669785582a5483c2f
    rfug${/}3fdda1941e3f557e77c05a7b9ec84a63793c5ccd1498adc79354f393867b6033
    rfug${/}40f103e15e7a7b5e38ce23e4e0effb1e2eebefb9b24b2a7d79cad73dc6da7f06
    rfug${/}410f7fe6d9038d2bbf5eff3053746ce1cef7e5263b7af553b22b18352347d5b6
    rfug${/}415e28bbab0b25f38eabc1ffc962aae3f580d762d318daf0b57510ad61c26d20
    rfug${/}4368bf6ece431c9f4d56798eef916ddf93f618cf87c615fc58dbf602e34ffeae
    rfug${/}44e58c5ffc5f62dd53e1ca2e321a99765a84fa98b334011b4d4c5b28d36e6a13
    rfug${/}452bda58da35426e37ad1e1d5aa6095dca0139471f81ccda42d75e7e3072153c
    rfug${/}479e12ffd5032cf2371a1a2f80f66c551926721b15ba4fa8bde029e7cc09a3a1
    rfug${/}47f52d598f3fe4ac621c9778caeb1546769ad95a636981805f8e0895a3dcc771
    rfug${/}48be95fd1c6832122bd1bd21b6b807db90365c4841f75f31ad55b1b31f3ffe8f
    rfug${/}506a398e7eafc854ac8b5dd2efdaa9a50038e591238571e070ed26d6225be0be
    rfug${/}52c8af8fbc6b184fea278fcadd1ecc3da68ca3813d97697b3285fadcd1e285ab
    rfug${/}532d35971d640d9a253b47ec29d37135f9558dacf964ef722d584809ee21b82f
    rfug${/}5655e1ae7dfd07ca9cb840e674152411889f65a731907b0d2938a39382926756
    rfug${/}57586d2261c92768d9d83a4f84d60357d651bd2f1fa2cbf995919a977cc1c246
    rfug${/}57d4fe4bb026e3aab2349f18ead841fa91c26661b0cfdfd613b69adb9da5eec3
    rfug${/}591c36a3075dba9bff1249e2b03cd92d2ba54b7d211e33b64b9edd0e24b22dad
    rfug${/}59faa878a8acd1c86dbc79a2cab7123825e5dd9bc4f98ea5a12ecc916f17ed63
    rfug${/}5ba768e3c479734e43c46e286ae480005c12b38720a1868b2eb49014480ba442
    rfug${/}5cdf1e7a7c1e1180764138c8d8633bf2ad274a858d45cf9f2495c919bea5fbe9
    rfug${/}5e73f2bdd7cd6d43b7a87137f25aaf6b6d4bef7bd67c109cbe5aa1ab28dbe6a4
    rfug${/}6170e7b26b1017b12aa66b5bc52a6242c3e37be0e0949b7cbc9222af136d4803
    rfug${/}618adedfd1b83f5d45e078051c01d0eb326ba188aa0e07307336de0ec8024f86
    rfug${/}6416c19caa21082fbf17a041f1dd0e196fbcd72d45e59c304d3c21c7b7793ea6
    rfug${/}651255edafb18fa80c1e4d4b54c33dccdc73097fc3f0e7da390d7138d8762dcc
    rfug${/}653727e6079338350455d797c46d39fb3f8e738dd4976798b26c7b67b11cf8ae
    rfug${/}6d8e9584fa383b2234ad4f0041a029f77d0f5d50dd4b273a541a89e26b53ee09
    rfug${/}6ddd7ceacb679de1a36841fe680929cd21e30e8294c8c32306a3eee4d30e6154
    rfug${/}6e8906a5f2ec1b630a50364e313f4d6b0eb5bbfec7bf7f18645b7a8d98130c5c
    rfug${/}6fc94101dabf8ec05d36020547f1a76368b9e111bea2da46827196c8bbab19a5
    rfug${/}73296a9999631a485bd1df7926822d37a014dee6dfefb4e9a6d17eb58e1de930
    rfug${/}75a1e5fde354d71dca9a0bd0d90a0c177fe496ecd6d65048ea77f2b46b4c4c41
    rfug${/}766f42a8c689f4a3dc55c9ba7cb7d5c5c53e3d835d5dad759b8a7898cd00d652
    rfug${/}7ba3bd3e76ec30280f3b93616f7a9fe0d5d910e184bdd5e88accaa8ad8b3a15c
    rfug${/}7bf46b6d5812b6dd32ef9a4ebab7e61b0923a695b03db511ab535d897e2e6264
    rfug${/}7e9e17a259aec72a2990467109c927b18e8c1ef206285f85350bd248aa5c5ad8
    rfug${/}7f7aff82879c76d0b98191118153ed2f7e6cf0d62bd66eeb149ccc3b75876569
    rfug${/}874704917cf5c4d3b0fef54dd73aa731eeae497eda7d4907caaf5d8ee1b751b8
    rfug${/}8975555ee765d3df3e42871ae70b7c92d59d208e9eb1fa370cd4942849f216fd
    rfug${/}8bd3cf1fa009f5d9e1c27f0f382a854efef602300713d10586ae600d8f70a6d3
    rfug${/}8bfe7b77d86188c23a880b441804d4d944ec8190ada40fb83d5fa7e37f6ce804
    rfug${/}8df77959c3c808ed3102f5c6c1fa49733ba4e773ddaf246710a2b797cd56a643
    rfug${/}8e5140e8a3f637e0a4df37a4141af6acd5a17ac3dca15a7c67071de1e6a7b1ba
    rfug${/}8fe96d3d4aec5eca5394e8e93118115b04470e35fbe2f4b46a3b65606fc01181
    rfug${/}90546ad3f03c6d9dd4c49becff6a764c7b48c7338cde927dff2243261ec75ba5
    rfug${/}90bd912803b584e17e849080fd626ef144c6f9ccf282b648fbf39b57ddffd3f6
    rfug${/}92ba7ffda8428e1761be331c36ee388868e4c74cb32c43dacb4b870eeae8d7c2
    rfug${/}93ae646bc6372e44bb81813d04d11fa6fa379e162f65fa81b9b4d936253fc25a
    rfug${/}9646aff3c29735e7d4190f239ad82ef5c4370d11103bce5fe3035279f15ba31e
    rfug${/}97c08e4a04df19c3fda2bfcabb91474f246c1404b9136e399c8986f2c143a440
    rfug${/}99a7515409d3919e877a32ad408a7bc231e6297ef3c45af189ebbcb4ba8e5126
    rfug${/}a66ddf2a13c2108d30af91be420d31de4e08118de296f4e308e1925e426253fd
    rfug${/}a7596ec70c45490a4e819caf159823b81464e5f66897b5e1c718da7e23fea283
    rfug${/}a7d7bfca50cfe793ef63c8cea2b534155a899b6c04300976d68699428dbe6ea7
    rfug${/}a8115e316cc8dd5035c950f19a019b6f8d9ea7667a6fa851de29a93e131165a9
    rfug${/}aa22ae088af21b643640b58dec621d3d8d904e732b308446e849dd10adfd4fb4
    rfug${/}ab223eb46e8e9ad93b3510d6ec1c2a76ee92e02b5a6281aa267cf771085f4dae
    rfug${/}b2ca9fedc1748d10b0ef401a0dfea4d336f70a16efb32fe55328504fb0524244
    rfug${/}b87d695c51ccc4f21e5820860bcbf4cc6851ad1166665833cfc319a1a423eb21
    rfug${/}ba8686e4f09bc3b721279260eb268b42dbc680f0a0b07ba90ee7468a00b3f5a2
    rfug${/}bac9ffc20adf5c49fe2c1a0c093ab96d501297796d01d74337ed6766df7f2974
    rfug${/}bb93c8b4e9dffbad90ad5667eee7ce2e098f7828b2592df256e412959fbe4f0c
    rfug${/}c039ae1f15e242142ec0e88508deb8013e63236fce9b934181dbbf597bd1ba79
    rfug${/}c1b0768d04cb2ffd9c8357fffa052d5530dec6b582024789f7e390dcf46be3b9
    rfug${/}c201a52dc79270dcd0d55c528965114635500404fb3a412d4dca2f375f0bd40b
    rfug${/}c330fbac99b018d17cf3df78f09d5c9548b83dcf52b4e62e46c34e0154562932
    rfug${/}c64b7d09f132dd7c2a9826fbeaf0de94534d1ddc852bf5e20df93bb4fb5a44af
    rfug${/}c74568d0a997b544bbad4342b930792a51b97e5198aee8c86bd9486fee742307
    rfug${/}c8c6ff813ce931a654305197bf0a54727c2d27e1f526b6fa7daaaefca33ddfe1
    rfug${/}c9b783d88d1e8ad70f8b8547822c97a5df506b19f0f4a9030850af503d895826
    rfug${/}c9e69339713700f43dee457a6e155bc30f5ff0e94cabedc07bb37132340ea08b
    rfug${/}cdc160e6f7e6916c58517f42a2213c0eb456ddb927ae6d60617deb63621d59d5
    rfug${/}cfac0bd38202344652998d8e761fe99e18eb3627e688c8ff4422fffaa14076e7
    rfug${/}cfbda18f03128c58940300219c051619419e49bbf48f8827ac8a468f9fc49dad
    rfug${/}d0b81911ad9aea4ae30bfc46af694e215b6f5b1570c6199d4af0a1a25acab272
    rfug${/}d6a0f25ab7382e810dd5d16a46617a85f4bf8d27ff03ee26269a49f80c08bbe1
    rfug${/}d710c924030524c2271d27dcacc0b427ed39183dfd324bb4563df73013331777
    rfug${/}d717f16613277fd934155e2611b4de039c800b57e7ee3b0d614d3e44066593fa
    rfug${/}da59023552a7d45908c443c308952825cec834ad47b95c6b6a41d45b9085ff47
    rfug${/}dd20d932dc93d6b9f61f6607985ae91b6cc12fc292279a882819ae9c1e891110
    rfug${/}defcc7803fcf63c13b5ff1a7cf0d5969d8876a3f3e2b81e5ace65dbb8c987ab2
    rfug${/}e07efb6e3d60641f5d4bf0b29f5ec88400ce107ccc74b64cd9d705e70bba08a5
    rfug${/}e0e51f49a26794416e8e4678fcaf772aadf53000240df723bc67cacce5b907c5
    rfug${/}e121bcdf1a93f06906551fc8231b302edb252786bddeb7658cdd549dfa718b35
    rfug${/}e34d205a920479f6e448b166b8ce08b02d875ca3352ee383e83a0f8d69022021
    rfug${/}e387cc44e663e66585d3aac555ad217ca8be9b7b52aee4625610ca36d3771466
    rfug${/}e63e1c99aa2717cc02f5713c5fa947d0f9644ecdb41ddb3f4496f8cfb84e4181
    rfug${/}e8bad102a86a8bfadf5ad8c218003b5e1306f1be7a58ee85d01842d7d7340e90
    rfug${/}e9469b86da7278b6235341d43d41256e6a33da5322f547913fda313af562fd9d
    rfug${/}eb476d0680d3f6b723a44707c19fb386b70d8856cfb01d9e03d4c63647e8d907
    rfug${/}ef92fc6d23046942bc803c50cb1ca6342b53ef08e89d9d9d4b61222ec33bdf48
    rfug${/}f11d6a7668d70b777258aa16146520ebffc9891b463cb53632afffd84ee02704
    rfug${/}f39b39b3cd3c439b7588bb415577dcc29dcfd5d2ce4523f6193360813cbcb9b8
    rfug${/}fa420f6bccf5d261b63e20c73d18b8df664e7b9417de3adfa564237e159d4ba4
    rfug${/}fe8480f4197ffe02624f80c1f2d8c21e22c0b2e10fb7c8080240ff4dd21db486
    rfug${/}fee50dc83ea12e719f26789ebd9fdcc0e910b3bd36663f80133030c70500d54b
    # END RFUG

*** Keywords ***
Robot Syntax Highlighting Should Yield Tokens
    [Arguments]    ${example}
    Run Keyword And Ignore Error    Click Element    css:.jp-Dialog-button.jp-mod-accept
    ${robot} =    Get File    ..${/}fixtures${/}highlighting${/}samples${/}${example}.robot
    Add a Cell    ${robot}
    Run Keyword And Ignore Error    Click Element  ${SAVE}
    ${observed} =    Get Cell Source Tokens
    ${cake} =    Evaluate    "\\n".join([" ".join(obs) for obs in ${observed}])
    Create File    ${OUTPUT DIR}${/}${BROWSER}${/}tokens${/}${example}.tokens    ${cake}
    ${raw} =    Get File    ..${/}fixtures${/}highlighting${/}tokens${/}${example}.tokens
    ${expected} =    Evaluate    [line.strip().split(" ") for line in """${raw}""".strip().split("\\n")]
    Should Be Equal    ${observed}    ${expected}

Make a Highlighting Notebook
    [Documentation]    Make a notebook for testing syntax highlighting
    Open JupyterLab with    ${BROWSER}
    Set Screenshot Directory    ${OUTPUT_DIR}${/}${BROWSER}${/}robot${/}highlighting
    Launch a new    Robot Framework    Notebook
