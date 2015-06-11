<div id="support">
	<div class="title allIcon">Hãy gọi cho chúng tôi! <span class="tru" data="0">&nbsp;</span></div>
    <div class="info">
    	<?php
        if(!isset($dataChiNhanh)) $dataChiNhanh = $c->_model->_listChiNhanh($lang);
		$str1=''; $str2=''; $i=0;
		foreach($dataChiNhanh as $row){
			$i++;
			if($i!=1){
				$active=''; $hidden='hidden';
			}else{
				$active='active'; $hidden='';
			}
			$str1.='<div class="tab '.$active.'" data="itemS'.$row['id'].'">'.$row['name'].'</div>';
			$str2.='<div class="itemInfo itemS'.$row['id'].' '.$hidden.'">
				<div style="margin-bottom:10px">Điện thoại: <span class="tel">'.$row['phone'].'</span></div>
				<div>Hotline: <span class="hotline">'.$row['hotline'].'</span></div>
			</div>';
		}
		echo $str1.'<div class="clear10"></div>'.$str2;
		?>
        <!--<div id="chat" class="allIcon">Chat với chúng tôi!</div>
        <div id="ajaxChat"></div>-->
    </div>
</div>

<script type="text/javascript">
	$(document).ready(function(e) {
        $("#support .title").click(function(){
			var id = $("#support .title span").attr("data");
			if(id=='0'){
				$("#support .title span").removeClass("tru");
				$("#support .info").hide(100);
				$("#support .title span").attr("data", "1");
			}else{
				$("#support .title span").addClass("tru");
				$("#support .info").show(100);
				$("#support .title span").attr("data", "0");
			}
			return true;
		});
		$(".tab").click(function(){
			var data = $(this).attr("data");
			$(".tab").removeClass("active");
			$(this).addClass("active");
			
			$(".itemInfo").addClass("hidden");
			$("." + data).removeClass("hidden");
			
			return true;
		});
		$("#chat").click(function(){
			$.ajax({ 	
				url:"ajax/",
				type:'post',
				data:{chat:1},
				cache:true,
				success: function(data){
					$("#ajaxChat").html(data);
				}
			});
			return true;
		});
    });
</script>