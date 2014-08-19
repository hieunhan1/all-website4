<div id="footer">
    <div id="menu_footer" class="bogoc_10px">
        <?php
        $data = $this->_model->_web_menu($lang, 0, 3);
        foreach($data as $row){
            echo '<a href="'.$row['url'].'">'.$row['name'].'</a>';
        }
        ?>
        <div id="run_top">Đầu trang</div>
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="10" style="color:#666; margin-bottom:10px">
        <tr>
            <td valign="top"><p style="margin-bottom:5px">Kết nối với chúng tôi</p>
                <?php
                $data = $this->_model->_web_menu($lang, 0, 6);
                foreach($data as $row){
                    echo '<a href="'.$row['url'].'"><img src="'.CONS_IMAGES_CATALOG.$row['url_img'].'" alt="'.$row['name'].'" style="margin-right:5px" /></a>';
                }
                ?>
            </td>
            <td valign="top" style="line-height:180%"><?php echo '<p style="color:#F60465; font-weight:bold">'.$this->_config['name'].'</p>'.$this->_config['contact_foo'];?></td>
            <td style="text-align:right">Copyright © 2014 heoxinhshop.com</td>
        </tr>
    </table>
</div>