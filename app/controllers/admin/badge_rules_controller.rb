class Admin::BadgeRulesController < Admin::BaseController

  before_action :find_badge
  before_action :find_rule, only: %i[edit update destroy]

  def new
    @badge.build_rule(badge_rule_params)
  end

  def create
    @badge.build_rule(badge_rule_params)

    if @badge.rule.save
      redirect_to admin_badges_path, notice: I18n.t('.created')
    else
      render :new
    end
  end

  def edit; end

  def update
    if @rule.update(badge_rule_params)
      redirect_to admin_badge_path(@badge), notice: I18n.t('.updated')
    else
      render :edit
    end
  end

  def destroy
    @rule.destroy
    redirect_to admin_badge_path(@badge), notice: I18n.t('.destroyed')
  end

  private

  def find_badge
    @badge = Badge.find(params[:badge_id])
    @categories = Category.list
    @levels = Test.levels
  end

  def find_rule
    @rule = BadgeRule.find(params[:id])
  end

  def badge_rule_params
    params.require(:badge_rule).permit(:badge_id, :rule_type, :rule_value)
  end
end
