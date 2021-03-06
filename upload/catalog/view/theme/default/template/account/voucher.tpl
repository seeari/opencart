<?php echo $header; ?>
<ul class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
  <?php } ?>
</ul>
<?php if ($error_warning) { ?>
<div class="alert alert-error"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="row"><?php echo $column_left; ?>
  <div id="content" class="span9"><?php echo $content_top; ?>
    <h1><?php echo $heading_title; ?></h1>
    <p><?php echo $text_description; ?></p>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
      <div class="control-group required">
        <label class="control-label" for="input-to-name"><?php echo $entry_to_name; ?></label>
        <div class="controls">
          <input type="text" name="to_name" value="<?php echo $to_name; ?>" id="input-to-name" />
          <?php if ($error_to_name) { ?>
          <span class="error"><?php echo $error_to_name; ?></span>
          <?php } ?>
        </div>
      </div>
      <div class="control-group required">
        <label class="control-label" for="input-to-email"><?php echo $entry_to_email; ?></label>
        <div class="controls">
          <input type="text" name="to_email" value="<?php echo $to_email; ?>" id="input-to-email" />
          <?php if ($error_to_email) { ?>
          <span class="error"><?php echo $error_to_email; ?></span>
          <?php } ?>
        </div>
      </div>
      <div class="control-group required">
        <label class="control-label" for="input-from-name"><?php echo $entry_from_name; ?></label>
        <div class="controls">
          <input type="text" name="from_name" value="<?php echo $from_name; ?>" id="input-from-name" />
          <?php if ($error_from_name) { ?>
          <span class="error"><?php echo $error_from_name; ?></span>
          <?php } ?>
        </div>
      </div>
      <div class="control-group required">
        <label class="control-label" for="input-from-email"><?php echo $entry_from_email; ?></label>
        <div class="controls">
          <input type="text" name="from_email" value="<?php echo $from_email; ?>" id="input-from-email" />
          <?php if ($error_from_email) { ?>
          <span class="error"><?php echo $error_from_email; ?></span>
          <?php } ?>
        </div>
      </div>
      <div class="control-group required">
        <div class="control-label"><?php echo $entry_theme; ?></div>
        <div class="controls">
          <?php foreach ($voucher_themes as $voucher_theme) { ?>
          <?php if ($voucher_theme['voucher_theme_id'] == $voucher_theme_id) { ?>
          <label class="radio">
            <input type="radio" name="voucher_theme_id" value="<?php echo $voucher_theme['voucher_theme_id']; ?>" checked="checked" />
            <?php echo $voucher_theme['name']; ?></label>
          <?php } else { ?>
          <label class="radio">
            <input type="radio" name="voucher_theme_id" value="<?php echo $voucher_theme['voucher_theme_id']; ?>" />
            <?php echo $voucher_theme['name']; ?></label>
          <?php } ?>
          <?php } ?>
          <?php if ($error_theme) { ?>
          <span class="error"><?php echo $error_theme; ?></span>
          <?php } ?>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="input-message"><?php echo $entry_message; ?></label>
        <div class="controls">
          <textarea name="message" cols="40" rows="5" id="input-message"><?php echo $message; ?></textarea>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="input-amount"><?php echo $entry_amount; ?></label>
        <div class="controls">
          <input type="text" name="amount" value="<?php echo $amount; ?>" id="input-amount" size="5" />
          <?php if ($error_amount) { ?>
          <span class="error"><?php echo $error_amount; ?></span>
          <?php } ?>
        </div>
      </div>
      <div class="buttons clearfix">
        <div class="pull-right"> <?php echo $text_agree; ?>
          <?php if ($agree) { ?>
          <input type="checkbox" name="agree" value="1" checked="checked" />
          <?php } else { ?>
          <input type="checkbox" name="agree" value="1" />
          <?php } ?>
          &nbsp;
          <input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary" />
        </div>
      </div>
    </form>
    <?php echo $content_bottom; ?></div>
  <?php echo $column_right; ?></div>
<?php echo $footer; ?>