class Admin::V1::TypeOfPaymentsController < ApplicationController
  def index
    @types = TypePayments.list
  end
end
