class Admin::BadgesController < Admin::BaseController

  before_action :find_admin_badge, only: %i[show edit update destroy]

  def index
    @admin_badges = Badge.all
  end

  def show
    @rule_types = BadgeRule::RULE_TYPES
  end

  def new
    @admin_badge = Badge.new
  end

  def edit; end

  def create
    @admin_badge = Badge.new(admin_badge_params)

    if @admin_badge.save
      redirect_to admin_badge_path(@admin_badge), notice: I18n.t('.created')
    else
      render :new
    end
  end

  def update
    if @admin_badge.update(admin_badge_params)
      redirect_to admin_badges_path, notice: I18n.t('.updated')
    else
      render :edit
    end
  end

  def destroy
    @admin_badge.destroy
    redirect_to admin_badges_path, notice: I18n.t('.destroyed')
  end

  private

  def find_admin_badge
    @admin_badge = Badge.find(params[:id])
  end

  def admin_badge_params
    params.require(:badge).permit(:name, :image)
  end

end
