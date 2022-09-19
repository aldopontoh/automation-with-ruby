require 'appium_lib'

class CicilanPage < Appom::Page

    element :btn_simpan_cicilan, :id, 'com.pawoon.pos.staging:id/action_save'
    element :btn_detail_cicilan, :id, 'com.pawoon.pos.staging:id/detail'
    element :checkbox_cicilan1, :id, 'com.pawoon.pos.staging:id/installment_check'
    element :btn_bayar_cicilan, :id, 'com.pawoon.pos.staging:id/button_pay'
    element :txt_customer, :id, 'com.pawoon.pos.staging:id/customer_name'

    element :scrollF, :uiautomator, 'new UiScrollable(new UiSelector().scrollIntoView("
    + "new UiSelector().resourceId("com.pawoon.pos.staging:id/installment_check")))'

    element :cekbox_cicilan1, :uiautomator, 'new UiScrollable(new UiSelector().scrollable(true).instance(0))" +
         ".scrollIntoView(new UiSelector().resourceId("com.pawoon.pos.staging:id/installment_check").instance(0));'

end