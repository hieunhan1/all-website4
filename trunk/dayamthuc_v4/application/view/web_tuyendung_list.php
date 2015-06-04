<div class="content">
    <?php echo $c->viewNavigator($lang, $currentMenu['id']);?>
	<div id="article">
        <div class="viewpost">
            <?php
            echo "<h1>{$currentMenu['title']}</h1>";
            echo "<h2>{$currentMenu['description']}</h2>";
            ?>
        </div>
        
        <table width="100%" border="0" cellpadding="10" cellspacing="0" id="tuyendung">
        	<tr style="background-color:#E5E5E5">
            	<th width="30" align="right">STT</th>
                <th align="left">Vị trí tuyển dụng</th>
                <th width="90">Nơi làm việc</th>
                <th width="90">Mức lương</th>
                <th width="90">Hạn nộp HS</th>
            </tr>
            <?php
			$perPage = $config['limit_2'];
			$startRow = ($currentPage-1)*$perPage;
			$select = '`noilamviec`, `mucluong`, `datetime_hannop`';
			$data = $c->_model->_listDataTable($table, $currentMenu['id'], $totalRows, $perPage, $startRow, $select);
			$noilamviec = array('','Tp.HCM','Hà Nội','Huế','Đà Nẵng','Cần Thơ','Đồng Nai','Bình Dương','Nước ngoài','Khác');
			$i=$startRow;
			foreach($data as $row){
				$i++;
				echo '<tr><th align="right" valign="top">'.$i.'.</th>
				<td valign="top"><a href="'.$row['url'].'">'.$row['name'].'</a></td>
				<td align="center" valign="top">'.$noilamviec[$row['noilamviec']].'</td>
				<td align="center" valign="top">'.$row['mucluong'].'</td>
				<td align="center" valign="top">'.date('d/m/Y', $row['datetime_hannop']).'</td></tr>';
			}
			?>
        </table>
        <div id="phantrang">
			<?php
            $offSet = 5;
            $data = $c->pagesList($currentMenu['url'], $totalRows, $offSet, $perPage, $currentPage);
            echo $data;
			?>
        </div>
    </div>
    
    <?php include_once('web_right.php');?>
    
    <div class="clear1"></div>
</div>