<div id="right">
	<?php
	if($currentMenu['typeMenuId']!=1) echo '<h1 id="h1">'.$currentMenu['name'].$adAddDetail.'</h1>';
    $strTab='';
    $strTabContent='';
    $dataC = $c->_model->_listDetailTab($currentMenu['id']);
    if(count($dataC)!=0){
        $dataTab = $c->_model->_listMenuTab($lang);
		//echo $currentMenu['tab_id'];
        $tab = explode(',', $currentMenu['tab_id']);
		if(count($tab) > 1){
			for($i=1; $i<count($tab)-1; $i++){
				$tabId = $tab[$i];
				if($i!=1) $style=''; else $style='active';
				$strTab .= '<div class="item '.$style.'" idTab="'.$tabId.'"><a href="'.$currentMenu['url'].'#'.$dataTab[$tabId]['name'].'">'.$dataTab[$tabId]['name'].'</a></div>';
				if(isset($dataC[$tabId]['content'])){
					$strTabContent .= '<div id="tab'.$tabId.'" class="tab '.$style.'">
					<li id="'.$dataC[$tabId]['id'].'" name="'.$dataC[$tabId]['name'].'" table="web_article" style="list-style:none">'.$adInfo.'</li>
					'.$dataC[$tabId]['content'].'
					</div>';
				}
			}
			echo '<div id="tab">'.$strTab.'</div>';
		}else{
			echo $viewData;
		}
    }
    ?>
    
    <div class="viewpost"><?php echo $strTabContent; ?></div>
    <div class="clear30"></div>
</div>