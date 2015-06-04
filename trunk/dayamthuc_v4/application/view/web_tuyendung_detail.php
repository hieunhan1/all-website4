<div class="content">
    <?php echo $c->viewNavigator($lang, $currentMenu['id']);?>
	<div id="article" class="viewpost">
        <?php
		$data = $cD->_model->_viewTuyenDungCty($rowDetail['tuyendung_cty_id']);
		
		$noilamviec = array('','Tp.HCM','Hà Nội','Huế','Đà Nẵng','Cần Thơ','Đồng Nai','Bình Dương','Nước ngoài','Khác');
		$noilamviec = $noilamviec[$rowDetail['noilamviec']];
		if($noilamviec!='Khác') $str = ' - Làm việc '.$noilamviec;
		
		echo "<h1>{$rowDetail['name']}{$str}</h1>";
		?>
        <div style="clear:both; height:1px"></div>
        <table width="100%" border="0" cellpadding="0" cellspacing="0" id="tuyendung_content">
        	<tr>
            	<td colspan="2" style="background-color:#E5E5E5; font-weight:bold; padding:5px; text-align:center; color:#00F">THÔNG TIN TUYỂN DỤNG</td>
            </tr>
            <tr>
            	<td width="150" style="border-right:dashed 1px #CCC; font-weight:bold">Vị trí tuyển dụng:</td>
            	<td style="font-weight:bold; color:#F00"><?php echo $rowDetail['name']; ?></td>
            </tr>
            <tr>
            	<td style="border-right:dashed 1px #CCC; font-weight:bold">Nơi làm việc:</td>
            	<td><?php echo $noilamviec; ?></td>
            </tr>
            <tr>
            	<td style="border-right:dashed 1px #CCC; font-weight:bold">Mức lương:</td>
            	<td><?php echo $rowDetail['mucluong']; ?></td>
            </tr>
            <tr>
            	<td style="border-right:dashed 1px #CCC; font-weight:bold">Số lượng tuyển dụng:</td>
            	<td><?php echo $rowDetail['soluongtuyen']; ?></td>
            </tr>
            <tr>
            	<td valign="top" style="border-right:dashed 1px #CCC; font-weight:bold"><p>Quyền lợi:</p></td>
            	<td><?php echo $rowDetail['quyenloi']; ?></td>
            </tr>
            <tr>
            	<td valign="top" style="border-right:dashed 1px #CCC; font-weight:bold"><p>Yêu cầu:</p></td>
            	<td><?php echo $rowDetail['yeucau']; ?></td>
            </tr>
            <tr>
            	<td valign="top" style="border-right:dashed 1px #CCC; font-weight:bold"><p>Mô tả công việc:</p></td>
            	<td><?php echo $rowDetail['content']; ?></td>
            </tr>
            <tr>
            	<td colspan="2" style="background-color:#E5E5E5; font-weight:bold; padding:5px; text-align:center; color:#00F">THÔNG TIN NHÀ TUYỂN DỤNG</td>
            </tr>
            <tr>
            	<td valign="top" style="border-right:dashed 1px #CCC; font-weight:bold"><p>Tên nhà tuyển dụng:</p></td>
            	<td><h2 style="color:#F00"><?php echo $data['name']; ?></h2></td>
            </tr>
            <tr>
            	<td valign="top" style="border-right:dashed 1px #CCC; font-weight:bold"><p>Sơ lược công ty:</p></td>
            	<td><?php echo $data['content']; ?></td>
            </tr>
            <tr>
            	<td valign="top" style="border-right:dashed 1px #CCC; font-weight:bold"><p>Thông tin liên hệ:</p></td>
            	<td><p>
				<?php
                echo "Địa chỉ: {$data['address']} <br />Điện thoại: {$data['phone']} <br />";
				if($data['email'] != '') echo "Email: <a href='mailto:{$data['email']}'>{$data['email']}</a><br />";
				if($data['fax'] != '') echo "Fax: {$data['fax']}<br />";
				if($data['website'] != '') echo "Website: <a href='http://".trim($data['website'],'http://')."' target='_blank'>{$data['website']}</a><br />";
				
				if($rowDetail['other'] != '') echo "<br /><b>{$rowDetail['other']}</b>";
				?>
                </p></td>
            </tr>
            <tr>
            	<td align="right" valign="top" style="border-right:dashed 1px #CCC; font-weight:bold; color:#F60">Hạn nộp hồ sơ:</td>
            	<td style="font-weight:bold; color:#060; font-size:130%"><?php echo date('d/m/Y', $rowDetail['datetime_hannop']); ?></td>
            </tr>
        </table>
        <div id="other_post">
        	<div class="title">Tuyển dụng khác</div>
			<?php
            $data = $cD->_model->_viewOtherPost($lang, $rowDetail['id']);
            foreach($data as $row){
                echo '<li class="item"><a href="'.$row['url'].'" title="'.$row['name'].'" class="link">'.$row['name'].'</a></li>';
            }
            ?>
        </div>
        
    </div>
    
    <?php include_once('web_right.php');?>
    
    <div class="clear1"></div>
</div>